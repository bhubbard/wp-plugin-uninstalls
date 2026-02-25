#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'nipv_setting_option'
wp option delete 'woocommerce_cart_redirect_after_add'

