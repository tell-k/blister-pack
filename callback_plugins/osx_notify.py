# -*- coding: utf-8 -*-

from ansible.plugins.callback import CallbackBase
import subprocess


class CallbackModule(CallbackBase):

    def playbook_on_stats(self, stats):
        summary = stats.summarize('127.0.0.1')
        status = "Complete Provisioning!"
        if summary.get('failures') > 0 or summary.get('unreachable') > 0:
            status = "Failed Provisioning!"
        message = " ".join(["{}={}".format(k, v) for k, v in summary.items()])

        cmd = "osascript -e 'display notification \"{}\" with title \"{}\"'"
        cmd = cmd.format(message, status)
        subprocess.call(cmd, shell=True)
