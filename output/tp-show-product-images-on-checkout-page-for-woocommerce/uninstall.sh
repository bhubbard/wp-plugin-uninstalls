#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpspicp_image_width'
wp option delete 'tpspicp_image_height'
wp option delete 'tpspicp_is_rtl'
wp option delete 'tpspicp_image_border_radius'
wp option delete 'tpspicp_label_sale'
wp option delete 'tpspicp_label_you_saved'
wp option delete 'tpspicp_show_total_discount_cart'
wp option delete 'tpspicp_show_regular_sale_price_cart'
wp option delete 'tpspicp_activate'
wp option delete 'tpspicp_add_on_sale'

