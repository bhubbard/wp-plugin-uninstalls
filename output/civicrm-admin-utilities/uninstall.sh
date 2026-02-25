#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'menu_items'
wp option delete 'civicrm_admin_utilities_installed'
wp option delete 'civicrm_admin_utilities_version'
wp option delete 'civicrm_admin_utilities_settings'

