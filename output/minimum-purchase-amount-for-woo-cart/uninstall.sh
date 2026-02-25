#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ct_mpac_show_welcome_modal'
wp option delete 'ct_mpac_minimum_purchase_value_for_all'
wp option delete 'ct_mpac_cart_limit_message'
wp option delete 'ct_mpac_cart_disable_checkout'
wp option delete 'ct_mpac_include_discount_coupons_in_total'
wp option delete 'ct_mpac_exclude_shipping_from_cart_total'
wp option delete 'ct_mpac_minimum_cart_total_for_free_shipping'
wp option delete 'ct-mpac-role-specific-cart-limits'
wp option delete 'ct_mpac_active_version'

