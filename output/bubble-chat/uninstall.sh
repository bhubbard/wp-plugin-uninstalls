#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wa_bubble_options'
wp option delete 'wa_bubble_options_style'
wp option delete 'wa_bubble_page_conditions'
wp option delete 'wa_bubble_schedule'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'

