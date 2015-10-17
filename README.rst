==========================
shiguredo-packer-templates
==========================

Packer templates for building base VM boxes.

NOTE: Maybe you prefer official Ubuntu and CentOS vagrant boxes
===============================================================

There are now official Ubuntu and CentOS vagrant boxes at `Vagrant Cloud <https://atlas.hashicorp.com/boxes/search?utm_source=vagrantcloud.com&vagrantcloud=1>`_. These boxes are regularly updated to have newer packages.
If you don't need to build a customized box, maybe you can use those boxes instead of building boxes yourself using Packer and templates in this repository.

* `ubuntu/trusty64 <https://atlas.hashicorp.com/ubuntu/boxes/trusty64>`_
* `ubuntu/trusty32 <https://atlas.hashicorp.com/ubuntu/boxes/trusty32>`_
* `centos/7 <https://atlas.hashicorp.com/centos/boxes/7>`_

For example, you can use Vagrantfile like below to use official CentOS 7 box.

::

    Vagrant.configure(2) do |config|
      config.vm.box = "centos/7"
    end

Usage
=====

Installing Packer
-----------------

Download the latest packer from http://www.packer.io/downloads.html and unzip the appropriate directory.

If you're using Homebrew

::

    $ brew tap homebrew/binary
    $ brew install packer


Running Packer
--------------

::

    $ git clone https://github.com/shiguredo/packer-templates
    $ cd packer-templates
    $ packer build template.json


If you want to build only virtualbox.

::

    $ packer build -only=virtualbox-iso template.json


Parallel builds can be run on 0.6.0 or latest packer version.

::

    $ packer build -parallel=true template.json


Supported versions
------------------

This templates was tested using a packer 0.7.5 .
