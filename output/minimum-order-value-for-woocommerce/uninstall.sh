#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_min_order_value'
wp option delete 'woocommerce_min_order_message_checkout'
wp option delete 'woocommerce_min_order_message_cart'
wp option delete 'woocommerce_min_order_exclude_products'
wp option delete 'woocommerce_min_order_exclude_categories'

