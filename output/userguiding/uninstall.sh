#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'userguiding_code'
wp option delete 'userguiding_site'
wp option delete 'userguiding_admin'
wp option delete 'userguiding_customizer'

