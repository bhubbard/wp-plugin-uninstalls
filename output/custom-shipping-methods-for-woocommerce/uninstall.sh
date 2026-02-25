#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_custom_shipping_methods_version'
wp option delete 'alg_wc_custom_shipping_methods_plugin_enabled'
wp option delete 'alg_wc_custom_shipping_methods_do_replace_zero_cost'
wp option delete 'alg_wc_custom_shipping_methods_icon_desc_enabled'
wp option delete 'alg_wc_custom_shipping_methods_do_trigger_checkout_update'
wp option delete 'alg_wc_custom_shipping_methods_replace_zero_cost_text'
wp option delete 'alg_wc_custom_shipping_methods_admin_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

