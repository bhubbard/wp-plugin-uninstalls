#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipping_debug_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'flexible_shipping_methods_%'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_currency'
wp option delete 'flexible_shipping_method_id'
wp option delete 'flexible_shipping_method_creation_date'
wp option delete 'flexible_shipping_rates'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_default_customer_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugin_activation_%'"
wp option delete 'wpdesk_tracker_notice'
wp option delete 'wpdesk_tracker_agree'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_integration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_integration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_integration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_integration'"
