#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_payment_gateways_by_user_roles_plugin_enabled'
wp option delete 'alg_wc_payment_gateways_by_user_roles_check_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_gateway_roles_in_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_gateway_roles_ex_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_payment_gateways_by_user_roles_version'

