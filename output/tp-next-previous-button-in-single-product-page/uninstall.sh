#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpnpb_activate_next_previous'
wp option delete 'tpnpb_activate_next_previous_mobile'
wp option delete 'tpnpb_label_previous'
wp option delete 'tpnpb_label_next'
wp option delete 'tpnpb_buttons_position'
wp option delete 'tpnpb_buttons_color'
wp option delete 'tpnpb_buttons_border'
wp option delete 'tpnpb_buttons_font_size'
wp option delete 'tpnpb_buttons_icons'
wp option delete 'tpnpb_custom_css'
wp option delete 'tpnpb_add_product_image'
wp option delete 'tpnpb_add_product_name'
wp option delete 'tpnpb_product_image_size'

