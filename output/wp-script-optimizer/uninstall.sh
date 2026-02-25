#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpso_wp_scripts_array'
wp option delete 'wpso_wp_styles_array'
wp option delete 'wpso_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpso_deleted_%'"
wp option delete 'wpso_added_scripts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpso_added_%'"
wp option delete 'wpso_handles_moved_down'
wp option delete 'wpso_plugins_status'
wp option delete 'wpso_current_theme'
wp option delete 'wpso_added_styles'
wp option delete 'wpso_deleted_scripts'
wp option delete 'wpso_deleted_styles'

