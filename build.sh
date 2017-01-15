#!/bin/bash
echo "**************************************************************************"
echo "* Updating composer for the usertool package                             *"
echo "**************************************************************************"
composer update
echo "**************************************************************************"
echo "* Building the bin/cimsusertool.phar file                                *"
echo "**************************************************************************"
vendor/bin/box build
echo "**************************************************************************"
echo "* Note: php.ini must have phar.readonly = Off set to build the phar file *"
echo "**************************************************************************"
// rm -Rf bin/*.rpm
echo "**************************************************************************"
echo "* Building the bin cimusertool RPM file                                  *"
echo "**************************************************************************"
fpm --force -s dir -t rpm -n 'cimsusertool' -v '1.0.0' --iteration '1' --description 'USF Command-line tool for AD requests' --vendor 'University of South Florida' --config-files '/usr/local/etc/cimsusertool/settings.yml' -p 'bin' 'bin/cimsusertool.phar'='/usr/local/bin/cimsusertool' 'config/settings.yml'='/usr/local/etc/cimsusertool/settings.yml'