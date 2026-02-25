#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yep_settings'
wp option delete 'yep_version'
wp option delete 'yep_date_install'

