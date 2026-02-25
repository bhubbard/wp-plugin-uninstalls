-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awqv_notice', 'awqv_lite_activation_date', 'btn_padding_top_bottom', 'btn_padding_left_right', 'awqv_nav_color', 'awqv_nav_hover_color', 'awqv_dot_color', 'awqv_icon_color', 'awqv_sale_flash_bg', 'awqv_cart_button_bg', 'awqv_view_cart_button_bg', 'awqv_window_bg', 'awqv_title_color', 'qv_animation', 'awqv_desc_color', 'awqv_product_meta_color', 'awqv_product_meta_link_color', 'awqv_product_review_color', 'awqv_product_price_color', 'awqv_action_button_bg', 'awqv_lite_version', 'qv_button_label', 'awqv_general_section', 'awqv_icon_picker', 'woocommerce_cart_redirect_after_add', 'awqv_slider_dot_switch', 'awqv_slider_nav_switch', 'awqv_slider_prev_icon', 'awqv_slider_next_icon', 'awqv-lite-thankyou-notice');

