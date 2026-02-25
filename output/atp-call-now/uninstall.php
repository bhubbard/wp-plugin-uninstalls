<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atpcn_page_id');
delete_site_option('atpcn_page_id');
delete_option('atpcn_link');
delete_site_option('atpcn_link');
delete_option('atpcn_text');
delete_site_option('atpcn_text');
delete_option('atpcn_left_right');
delete_site_option('atpcn_left_right');
delete_option('atpcn_bottom_top');
delete_site_option('atpcn_bottom_top');
delete_option('atpcn_hide_pc');
delete_site_option('atpcn_hide_pc');
delete_option('atpcn_hide_mb');
delete_site_option('atpcn_hide_mb');
delete_option('atpcn_image_url');
delete_site_option('atpcn_image_url');
delete_option('atpcn_size');
delete_site_option('atpcn_size');
delete_option('atpcn_long');
delete_site_option('atpcn_long');
delete_option('atpcn_color');
delete_site_option('atpcn_color');
delete_option('atpcn_color_bg');
delete_site_option('atpcn_color_bg');
delete_option('atpcn_color_text');
delete_site_option('atpcn_color_text');
delete_option('atpcn_not_page_id');
delete_site_option('atpcn_not_page_id');

