#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_min_order_amount_value'
wp option delete 'woo_min_order_trigger_value'
wp option delete 'woo_min_order_amount_shop_link'
wp option delete 'woo_min_order_amount_shop_link_text'
wp option delete 'woo_min_order_amount_cart_message'
wp option delete 'woo_min_order_amount_checkout_message'

