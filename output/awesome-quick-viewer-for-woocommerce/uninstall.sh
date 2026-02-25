#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awqv_notice'
wp option delete 'awqv_lite_activation_date'
wp option delete 'btn_padding_top_bottom'
wp option delete 'btn_padding_left_right'
wp option delete 'awqv_nav_color'
wp option delete 'awqv_nav_hover_color'
wp option delete 'awqv_dot_color'
wp option delete 'awqv_icon_color'
wp option delete 'awqv_sale_flash_bg'
wp option delete 'awqv_cart_button_bg'
wp option delete 'awqv_view_cart_button_bg'
wp option delete 'awqv_window_bg'
wp option delete 'awqv_title_color'
wp option delete 'qv_animation'
wp option delete 'awqv_desc_color'
wp option delete 'awqv_product_meta_color'
wp option delete 'awqv_product_meta_link_color'
wp option delete 'awqv_product_review_color'
wp option delete 'awqv_product_price_color'
wp option delete 'awqv_action_button_bg'
wp option delete 'awqv_lite_version'
wp option delete 'qv_button_label'
wp option delete 'awqv_general_section'
wp option delete 'awqv_icon_picker'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'awqv_slider_dot_switch'
wp option delete 'awqv_slider_nav_switch'
wp option delete 'awqv_slider_prev_icon'
wp option delete 'awqv_slider_next_icon'

# Delete Transients
wp transient delete 'awqv-lite-thankyou-notice'

