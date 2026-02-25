#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DOPW_button_text'
wp option delete 'DOPW_place_order_color'
wp option delete 'DOPW_total_color'
wp option delete 'DOPW_product_price_color'
wp option delete 'woocommerce_currency_pos'

