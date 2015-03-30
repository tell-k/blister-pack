# -*- coding: utf-8 -*-

import subprocess


class CallbackModule(object):

    def __init__(self):
        """ constructor """
        # self.disabled = True

    def on_any(self, *args, **kwargs):
        pass

    def runner_on_failed(self, host, res, ignore_errors=False):
        pass

    def runner_on_ok(self, host, res):
        pass

    def runner_on_skipped(self, host, item=None):
        pass

    def runner_on_unreachable(self, host, res):
        pass

    def runner_on_no_hosts(self):
        pass

    def runner_on_async_poll(self, host, res, jid, clock):
        pass

    def runner_on_async_ok(self, host, res, jid):
        pass

    def runner_on_async_failed(self, host, res, jid):
        pass

    def playbook_on_start(self):
        pass

    def playbook_on_notify(self, host, handler):
        pass

    def playbook_on_no_hosts_matched(self):
        pass

    def playbook_on_no_hosts_remaining(self):
        pass

    def playbook_on_task_start(self, name, is_conditional):
        pass

    def playbook_on_vars_prompt(self, varname, private=True,
                                prompt=None, encrypt=None,
                                confirm=False, salt_size=None,
                                salt=None, default=None):
        pass

    def playbook_on_setup(self):
        pass

    def playbook_on_import_for_host(self, host, imported_file):
        pass

    def playbook_on_not_import_for_host(self, host, missing_file):
        pass

    def playbook_on_play_start(self, name):
        pass

    def playbook_on_stats(self, stats):
        summary = stats.summarize('127.0.0.1')
        status = "Complete!"
        if summary.get('failures') > 0 or summary.get('unreachable') > 0:
            status = "Failed!"
        message = " ".join(["{}={}".format(k, v) for k, v in summary.items()])

        cmd = "osascript -e 'display notification \"{}\" with title \"{}\"'"
        cmd = cmd.format(message, status)
        subprocess.call(cmd, shell=True)
