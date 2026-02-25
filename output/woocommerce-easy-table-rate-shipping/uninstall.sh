#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'jem_table_rate_sub_shipping_method_id'
wp option delete 'woocommerce_tax_display_cart'

