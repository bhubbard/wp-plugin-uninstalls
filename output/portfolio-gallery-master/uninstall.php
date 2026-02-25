<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgm_notice_get_pro_version_dismissed');
delete_site_option('pgm_notice_get_pro_version_dismissed');
delete_option('pgm_portfolio_initial_width');
delete_site_option('pgm_portfolio_initial_width');
delete_option('pgm_portfolio_initial_height');
delete_site_option('pgm_portfolio_initial_height');
delete_option('pgm_portfolio_margin');
delete_site_option('pgm_portfolio_margin');
delete_option('pgm_portfolio_padding');
delete_site_option('pgm_portfolio_padding');
delete_option('pgm_portfolio_overlay_font_color');
delete_site_option('pgm_portfolio_overlay_font_color');
delete_option('pgm_portfolio_frame_color');
delete_site_option('pgm_portfolio_frame_color');
delete_option('pgm_portfolio_overlay_color');
delete_site_option('pgm_portfolio_overlay_color');
delete_option('pgm_disable_hover_display');
delete_site_option('pgm_disable_hover_display');
delete_option('pgm_disable_post_link');
delete_site_option('pgm_disable_post_link');
delete_option('pgm_portfolio_display_mode');
delete_site_option('pgm_portfolio_display_mode');
delete_option('pgm_display_per_row');
delete_site_option('pgm_display_per_row');
delete_option('pgm_display_min_width');
delete_site_option('pgm_display_min_width');
delete_option('pgm_display_max_width');
delete_site_option('pgm_display_max_width');

