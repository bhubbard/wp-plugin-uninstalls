#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_coupons'
wp option delete 'pickups_integration_customer_type'
wp option delete 'woocommerce_woo-ups-pickups_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'wpdesk_helper_options'
wp option delete 'wpdesk_tracker_skip_flexible_shipping_ups'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'active_sitewide_plugins'

