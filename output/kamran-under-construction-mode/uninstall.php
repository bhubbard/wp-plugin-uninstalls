<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ucm_enabled');
delete_site_option('ucm_enabled');
delete_option('ucm_bg_image');
delete_site_option('ucm_bg_image');
delete_option('ucm_bg_image_id');
delete_site_option('ucm_bg_image_id');
delete_option('ucm_bg_color');
delete_site_option('ucm_bg_color');
delete_option('ucm_font_size');
delete_site_option('ucm_font_size');
delete_option('ucm_font_family');
delete_site_option('ucm_font_family');
delete_option('ucm_heading_text');
delete_site_option('ucm_heading_text');
delete_option('ucm_message_text');
delete_site_option('ucm_message_text');
delete_option('ucm_logo_url');
delete_site_option('ucm_logo_url');
delete_option('ucm_logo_id');
delete_site_option('ucm_logo_id');

