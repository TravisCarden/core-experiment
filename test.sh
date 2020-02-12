#!/usr/bin/env bash

set -ev

clear

rm -rf vendor/acquia vendor/drupal/* web composer.lock

composer install -n

composer info drupal/drupal | grep "^path  " -B2

composer info drupal/core | grep "^path" -B2

