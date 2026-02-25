#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_enable_additional_charges_options'
wp option delete 'wc_additional_fee_title'
wp option delete 'wc_additional_fee_amount'
wp option delete 'wc_additional_fee_categories'
wp option delete 'wc_additional_fee_products'
wp option delete 'wc_additional_fee_minimum_cart_amount'
wp option delete 'wc_additional_fee_condition_type'
wp option delete 'wc_additional_fee_include_shipping_charge'
wp option delete 'wc_additional_fee_type'

