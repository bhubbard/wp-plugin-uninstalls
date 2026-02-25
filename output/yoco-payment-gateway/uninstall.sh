#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yoco_wc_payment_gateway_version'
wp option delete 'woocommerce_class_yoco_wc_payment_gateway_settings'
wp option delete 'yoco_orders_pending_payment'
wp option delete 'woocommerce_hold_stock_minutes'

# Delete Transients
wp transient delete 'yoco_webhook_processing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yoco_order_processing_%' OR option_name LIKE '_site_transient_yoco_order_processing_%'"

