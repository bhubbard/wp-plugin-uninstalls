#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_gateway_khipu_payment_methods'
wp option delete 'woocommerce_khipuregulartransfer_settings'
wp option delete 'woocommerce_khipusimplifiedtransfer_settings'

