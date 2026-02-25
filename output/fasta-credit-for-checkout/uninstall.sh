#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_hold_stock_minutes'

