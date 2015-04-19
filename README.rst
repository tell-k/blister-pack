blister-pack
==============================

|travis|

.. cotents::
   :local:


This project is an experiment to provisioning an environment of Mac OS X using the Ansible.
This project provides a template for povisioning environment.

* **Caution!** This project is very experimental, Please consider carefully use.
* I have check the operation only Yosemite.

Bootstrapping
----------------

You should copy this to new repository.

::

 $ sudo mkdir -p /opt/blister-pack
 $ sudo chown ${USER}:staff /opt/blister-pack
 $ git clone https://github.com/tell-k/blister-pack /opt/blister-pack/repo/
 $ cd /opt/blister-pack/repo/
 $ git remote rm origin
 $ git remote add origin <the location of my new git repository>
 $ git push -u origin master

Prepare 

::

  $ sudo xcodebuild -license
  $ xcode-select --install
  $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  $ brew doctor
  $ brew update
  $ brew install python
  $ brew install ansible

Provisioning

::
  
  $ git clone <new git repository>
  $ cd <new git repository>
  $ make playbook
  # When asked the sudo password, please enter your password.

Testing

::
  
  $ make test
  # Running test by serverspec


What You Get
----------------

This template project provides the following by default:

* Homebrew
* Homebrew-Cask
* Git
* Nginx
* Hub
* dnsmasq w/ .dev resolver for localhost
* rbenv
* ruby-build
* ruby-gem-rehash
* ruby-default-gems
* nodebrew
* Node.js 0.10
* Node.js 0.11
* Node.js 0.12
* Ruby 1.9.3
* Ruby 2.1.3
* rake
* serverspec
* Python 2.7
* Python 3.4
* pip
* virtualenv
* virtualenvwrapper
* Mercurial
* ack
* Findutils
* GNU tar
* autoconf
* readline
* openssl
* sqlite3
* gdbm

TODO

* Full Disk Encryption requirement


License
-----------

`MIT license <http://www.opensource.org/licenses/mit-license.php>`_

.. |travis| image:: https://travis-ci.org/tell-k/blister-pack.svg?branch=master
    :target: https://travis-ci.org/tell-k/blister-pack
