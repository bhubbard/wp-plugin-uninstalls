#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'shopup_venipak_shipping_settings'

