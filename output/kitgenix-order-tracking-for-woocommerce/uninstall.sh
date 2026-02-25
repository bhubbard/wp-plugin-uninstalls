#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kitgenix_order_tracking_for_woocommerce_lookup_count'
wp option delete 'kitgenix_order_tracking_for_woocommerce_tracking_numbers_added'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'kitgenix_order_tracking_for_woocommerce_carriers_settings'

# Delete Transients
wp transient delete 'kitgenix_order_tracking_for_woocommerce_do_activation_redirect'

