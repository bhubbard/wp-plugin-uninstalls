#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wcml_is_active'"
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logs_dictionary'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed_plugin_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_server_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"

