#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_cart_title'
wp option delete 'wp_cart_empty_text'
wp option delete 'cart_return_from_parspal_url'
wp option delete 'cart_products_page_url'
wp option delete 'wp_use_aff_platform'
wp option delete 'cart_parspal_id'
wp option delete 'parspal_password'
wp option delete 'wp_shopping_cart_image_hide'
wp option delete 'cart_base_shipping_cost'
wp option delete 'cart_free_shipping_threshold'
wp option delete 'addToCartButtonName'
wp option delete 'cart_payment_currency'
wp option delete 'cart_currency_symbol'
wp option delete 'wp_shopping_cart_collect_address'
wp option delete 'wp_shopping_cart_use_profile_shipping'

