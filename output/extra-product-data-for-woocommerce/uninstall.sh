#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'extra_product_data_max_order_status'
wp option delete 'exprdawc_custom_add_to_cart_text'
wp option delete 'woocommerce_currency_pos'
wp option delete 'exprdawc_show_in_cart'
wp option delete 'exprdawc_show_in_checkout'
wp option delete 'exprdawc_show_empty_fields'
wp option delete 'active_sitewide_plugins'

