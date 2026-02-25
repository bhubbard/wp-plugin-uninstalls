<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_cord_do_activation_redirect');
delete_site_option('pi_cord_do_activation_redirect');
delete_option('pi_corw_do_activation_redirect');
delete_site_option('pi_corw_do_activation_redirect');
delete_option('pi_corw_enable_wallet_refund');
delete_site_option('pi_corw_enable_wallet_refund');
delete_option('pi_corw_user_choice_for_wallet_refund');
delete_site_option('pi_corw_user_choice_for_wallet_refund');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('pi_corw_make_reason_required');
delete_site_option('pi_corw_make_reason_required');
delete_option('pi_corw_reorder_go_to_cart_button_text');
delete_site_option('pi_corw_reorder_go_to_cart_button_text');
delete_option('pi_corw_reorder_go_to_checkout_button_text');
delete_site_option('pi_corw_reorder_go_to_checkout_button_text');
delete_option('pi_corw_reorder_button_background_color');
delete_site_option('pi_corw_reorder_button_background_color');
delete_option('pi_corw_reorder_button_text_color');
delete_site_option('pi_corw_reorder_button_text_color');
delete_option('pi_corw_reorder_error_background_color');
delete_site_option('pi_corw_reorder_error_background_color');
delete_option('pi_corw_reorder_success_background_color');
delete_site_option('pi_corw_reorder_success_background_color');
delete_option('pi_corw_disable_order_completion_email');
delete_site_option('pi_corw_disable_order_completion_email');
delete_option('pi_corw_give_refund_in_wallet');
delete_site_option('pi_corw_give_refund_in_wallet');
delete_option('pi_corw_show_reorder_on_view_order_page');
delete_site_option('pi_corw_show_reorder_on_view_order_page');
delete_option('pi_corw_reorder_button_text');
delete_site_option('pi_corw_reorder_button_text');
delete_option('pi_corw_reorder_replace_cart_button_text');
delete_site_option('pi_corw_reorder_replace_cart_button_text');
delete_option('pi_corw_reorder_merge_cart_button_text');
delete_site_option('pi_corw_reorder_merge_cart_button_text');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

