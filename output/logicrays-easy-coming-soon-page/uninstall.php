<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lecsp_title');
delete_site_option('lecsp_title');
delete_option('lecsp_robots_meta');
delete_site_option('lecsp_robots_meta');
delete_option('lecsp_heading');
delete_site_option('lecsp_heading');
delete_option('lecsp_heading_text_color');
delete_site_option('lecsp_heading_text_color');
delete_option('lecsp_coming_soon_text');
delete_site_option('lecsp_coming_soon_text');
delete_option('lecsp_show_social_media');
delete_site_option('lecsp_show_social_media');
delete_option('lecsp_fb_link');
delete_site_option('lecsp_fb_link');
delete_option('lecsp_twiiter_link');
delete_site_option('lecsp_twiiter_link');
delete_option('lecsp_insta_link');
delete_site_option('lecsp_insta_link');
delete_option('lecsp_pinterest_link');
delete_site_option('lecsp_pinterest_link');
delete_option('lecsp_google_link');
delete_site_option('lecsp_google_link');
delete_option('lecsp_linkedin_link');
delete_site_option('lecsp_linkedin_link');
delete_option('body_background_image');
delete_site_option('body_background_image');
delete_option('lecsp_status');
delete_site_option('lecsp_status');

