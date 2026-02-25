<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awqv_notice');
delete_site_option('awqv_notice');
delete_option('awqv_lite_activation_date');
delete_site_option('awqv_lite_activation_date');
delete_option('btn_padding_top_bottom');
delete_site_option('btn_padding_top_bottom');
delete_option('btn_padding_left_right');
delete_site_option('btn_padding_left_right');
delete_option('awqv_nav_color');
delete_site_option('awqv_nav_color');
delete_option('awqv_nav_hover_color');
delete_site_option('awqv_nav_hover_color');
delete_option('awqv_dot_color');
delete_site_option('awqv_dot_color');
delete_option('awqv_icon_color');
delete_site_option('awqv_icon_color');
delete_option('awqv_sale_flash_bg');
delete_site_option('awqv_sale_flash_bg');
delete_option('awqv_cart_button_bg');
delete_site_option('awqv_cart_button_bg');
delete_option('awqv_view_cart_button_bg');
delete_site_option('awqv_view_cart_button_bg');
delete_option('awqv_window_bg');
delete_site_option('awqv_window_bg');
delete_option('awqv_title_color');
delete_site_option('awqv_title_color');
delete_option('qv_animation');
delete_site_option('qv_animation');
delete_option('awqv_desc_color');
delete_site_option('awqv_desc_color');
delete_option('awqv_product_meta_color');
delete_site_option('awqv_product_meta_color');
delete_option('awqv_product_meta_link_color');
delete_site_option('awqv_product_meta_link_color');
delete_option('awqv_product_review_color');
delete_site_option('awqv_product_review_color');
delete_option('awqv_product_price_color');
delete_site_option('awqv_product_price_color');
delete_option('awqv_action_button_bg');
delete_site_option('awqv_action_button_bg');
delete_option('awqv_lite_version');
delete_site_option('awqv_lite_version');
delete_option('qv_button_label');
delete_site_option('qv_button_label');
delete_option('awqv_general_section');
delete_site_option('awqv_general_section');
delete_option('awqv_icon_picker');
delete_site_option('awqv_icon_picker');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('awqv_slider_dot_switch');
delete_site_option('awqv_slider_dot_switch');
delete_option('awqv_slider_nav_switch');
delete_site_option('awqv_slider_nav_switch');
delete_option('awqv_slider_prev_icon');
delete_site_option('awqv_slider_prev_icon');
delete_option('awqv_slider_next_icon');
delete_site_option('awqv_slider_next_icon');

// Delete Transients
delete_transient('awqv-lite-thankyou-notice');
delete_site_transient('awqv-lite-thankyou-notice');

