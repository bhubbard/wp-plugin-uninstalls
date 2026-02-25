<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('live_font_preview_enable_all');
delete_site_option('live_font_preview_enable_all');
delete_option('live_font_preview_products');
delete_site_option('live_font_preview_products');
delete_option('live_font_preview_categories');
delete_site_option('live_font_preview_categories');
delete_option('live_font_preview_fonts');
delete_site_option('live_font_preview_fonts');
delete_option('live_font_preview_title');
delete_site_option('live_font_preview_title');
delete_option('live_font_preview_text_label');
delete_site_option('live_font_preview_text_label');
delete_option('live_font_preview_font_label');
delete_site_option('live_font_preview_font_label');
delete_option('live_font_preview_preview_label');
delete_site_option('live_font_preview_preview_label');
delete_option('live_font_preview_text_placeholder');
delete_site_option('live_font_preview_text_placeholder');
delete_option('live_font_preview_preview_text');
delete_site_option('live_font_preview_preview_text');
delete_option('live_font_preview_max_text_length');
delete_site_option('live_font_preview_max_text_length');
delete_option('live_font_preview_cart_text_label');
delete_site_option('live_font_preview_cart_text_label');
delete_option('live_font_preview_cart_font_label');
delete_site_option('live_font_preview_cart_font_label');
delete_option('live_font_preview_order_text_label');
delete_site_option('live_font_preview_order_text_label');
delete_option('live_font_preview_order_font_label');
delete_site_option('live_font_preview_order_font_label');
delete_option('live_font_preview_error_text');
delete_site_option('live_font_preview_error_text');
delete_option('live_font_preview_error_font');
delete_site_option('live_font_preview_error_font');

