#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpjup_wc_cond_shipping_plugin_enabled'
wp option delete 'wpjup_wc_cond_shipping_add_variations'
wp option delete 'wpjup_wc_cond_shipping_validate_all'
wp option delete 'wpjup_wc_cond_shipping_cart_not_package'
wp option delete 'wpjup_wc_cond_shipping_debug'
wp option delete 'alg_wc_cond_shipping_logical_operator'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'woocommerce_default_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'wpjup_wc_cond_shipping_checkout_notice'
wp option delete 'wpjup_wc_cond_shipping_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

