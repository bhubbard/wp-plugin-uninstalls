#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upn_db_version'
wp option delete 'upn_plugin_version'
wp option delete 'upn_plugin_install_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ed_Activated'"

