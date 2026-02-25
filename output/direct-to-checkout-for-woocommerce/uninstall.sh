#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_tab_direct_to_checkout_single_product_page_button_text'
wp option delete 'wc_settings_tab_direct_to_checkout_simple_shop_page_button_text'
wp option delete 'wc_settings_tab_direct_to_checkout_add_cart_to_checkout'

