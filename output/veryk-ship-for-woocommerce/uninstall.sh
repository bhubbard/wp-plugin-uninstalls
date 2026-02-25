#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'veryk_ship_settings'
wp option delete '_veryk_ship_supplier_list'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'method'
wp option delete 'tone-style'

