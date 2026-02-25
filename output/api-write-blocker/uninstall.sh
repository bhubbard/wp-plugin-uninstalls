#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allowed_ip'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allowed_rest_routes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allowed_ajax_actions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_rest_post'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_rest_put_patch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_rest_delete'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rest_error_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rest_status_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_xmlrpc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%xmlrpc_error_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%xmlrpc_status_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ajax_error_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ajax_status_code'"

