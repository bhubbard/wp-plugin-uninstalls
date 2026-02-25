#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_coordinate'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_shipper_name'
wp option delete 'woocommerce_store_shipper_phone'
wp option delete 'woocommerce_biteship_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_cod_settings'

