#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'dev-studio_options'

