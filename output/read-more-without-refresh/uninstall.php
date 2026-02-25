<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rmwr-notice-dismissed-alert');
delete_site_option('rmwr-notice-dismissed-alert');
delete_option('rm_text');
delete_site_option('rm_text');
delete_option('rl_text');
delete_site_option('rl_text');
delete_option('rmwr_smooth_scroll_free');
delete_site_option('rmwr_smooth_scroll_free');
delete_option('rmwr_print_expand_free');
delete_site_option('rmwr_print_expand_free');
delete_option('rmwr_font_weight');
delete_site_option('rmwr_font_weight');
delete_option('rmwr_text_color');
delete_site_option('rmwr_text_color');
delete_option('rmwr_text_hover_color');
delete_site_option('rmwr_text_hover_color');
delete_option('rmwr_background_color');
delete_site_option('rmwr_background_color');
delete_option('rmwr_padding');
delete_site_option('rmwr_padding');
delete_option('rmwr_border_bottom');
delete_site_option('rmwr_border_bottom');
delete_option('rmwr_border_bottom_color');
delete_site_option('rmwr_border_bottom_color');

