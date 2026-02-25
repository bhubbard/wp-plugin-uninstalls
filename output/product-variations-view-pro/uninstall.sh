#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dro_pvvp_is_enabled'
wp option delete 'dro_pvvp_show_range_price'
wp option delete 'dro_pvvp_show_main_product_short_description'
wp option delete 'dro_pvvp_show_product_gallery'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_trim_zeros'

