#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_PixelPay_IPG_Gateway_settings'

