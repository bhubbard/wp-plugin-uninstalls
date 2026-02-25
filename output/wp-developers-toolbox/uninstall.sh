#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_error_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_bar_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_only'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ip_only'"
wp option delete 'developer_toolbox_options_debug_mode'
wp option delete 'developer_toolbox_options_error_log'
wp option delete 'developer_toolbox_options_admin_bar_toggle'
wp option delete 'developer_toolbox_options_admin_only'
wp option delete 'developer_toolbox_options_ip_only'

