<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('title_main_heading');
delete_site_option('title_main_heading');
delete_option('pcsp_bg_image_url');
delete_site_option('pcsp_bg_image_url');
delete_option('description_content_block');
delete_site_option('description_content_block');
delete_option('google_plus_url');
delete_site_option('google_plus_url');
delete_option('facebook_page_url');
delete_site_option('facebook_page_url');
delete_option('twitter_handle_url');
delete_site_option('twitter_handle_url');

