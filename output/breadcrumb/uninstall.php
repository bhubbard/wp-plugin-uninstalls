<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('breadcrumb_info');
delete_site_option('breadcrumb_info');
delete_option('breadcrumb_options');
delete_site_option('breadcrumb_options');
delete_option('breadcrumb_text');
delete_site_option('breadcrumb_text');
delete_option('breadcrumb_home_text');
delete_site_option('breadcrumb_home_text');
delete_option('breadcrumb_display_auto_post_types');
delete_site_option('breadcrumb_display_auto_post_types');
delete_option('breadcrumb_display_auto_post_title_positions');
delete_site_option('breadcrumb_display_auto_post_title_positions');
delete_option('breadcrumb_separator');
delete_site_option('breadcrumb_separator');
delete_option('breadcrumb_display_last_separator');
delete_site_option('breadcrumb_display_last_separator');
delete_option('breadcrumb_word_char');
delete_site_option('breadcrumb_word_char');
delete_option('breadcrumb_word_char_count');
delete_site_option('breadcrumb_word_char_count');
delete_option('breadcrumb_word_char_end');
delete_site_option('breadcrumb_word_char_end');
delete_option('breadcrumb_display_home');
delete_site_option('breadcrumb_display_home');
delete_option('breadcrumb_url_hash');
delete_site_option('breadcrumb_url_hash');
delete_option('breadcrumb_hide_wc_breadcrumb');
delete_site_option('breadcrumb_hide_wc_breadcrumb');
delete_option('breadcrumb_padding');
delete_site_option('breadcrumb_padding');
delete_option('breadcrumb_margin');
delete_site_option('breadcrumb_margin');
delete_option('breadcrumb_bg_color');
delete_site_option('breadcrumb_bg_color');
delete_option('breadcrumb_link_color');
delete_site_option('breadcrumb_link_color');
delete_option('breadcrumb_font_size');
delete_site_option('breadcrumb_font_size');
delete_option('display_after_action');
delete_site_option('display_after_action');
delete_option('display_after_action_priority');
delete_site_option('display_after_action_priority');
delete_option('breadcrumb_themes');
delete_site_option('breadcrumb_themes');
delete_option('breadcrumb_separator_color');
delete_site_option('breadcrumb_separator_color');
delete_option('breadcrumb_custom_css');
delete_site_option('breadcrumb_custom_css');
delete_option('breadcrumb_custom_js');
delete_site_option('breadcrumb_custom_js');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('breadcrumb_options_old');
delete_site_option('breadcrumb_options_old');

