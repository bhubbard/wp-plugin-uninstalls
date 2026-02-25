#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_everypay_settings'
wp option delete 'woocommerce_everypay_everypay_iris_enabled'
wp option delete 'woocommerce_everypay_everypay_iris_merchant_name'
wp option delete 'woocommerce_checkout_page_id'

