#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_enable_custom_shipping_fee'
wp option delete 'wc_custom_shipping_fee_type'
wp option delete 'wc_custom_fee_minimum_cart_amount'
wp option delete 'wc_custom_fee_condition_type'
wp option delete 'wc_custom_shipping_fee_title'
wp option delete 'wc_custom_shipping_fee_amount'
wp option delete 'wc_custom_shipping_fee_include_shipping_charge'

