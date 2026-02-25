#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%option_names'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_menu_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%setting_editpage_hidden'"

