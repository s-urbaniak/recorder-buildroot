################################################################################
#
# python-pybluez
#
################################################################################

PYTHON_PYBLUEZ_VERSION = adbbbdd7058b6adaae06eec7e95f3f82cf2ae09f
PYTHON_PYBLUEZ_SITE = $(call github,pybluez,pybluez,$(PYTHON_PYBLUEZ_VERSION))

PYTHON_PYBLUEZ_SETUP_TYPE = setuptools
PYTHON_PYBLUEZ_LICENSE = GNU General Public License (GPL)
PYTHON_PYBLUEZ_LICENSE_FILES = COPYING

$(eval $(python-package))
