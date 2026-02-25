<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_header_images');
delete_site_option('wp_header_images');
delete_option('wphi_gluri_slider');
delete_site_option('wphi_gluri_slider');
delete_option('wphi_header_videos');
delete_site_option('wphi_header_videos');
delete_option('wphi_sidebar_settings');
delete_site_option('wphi_sidebar_settings');
delete_option('wphi_template_custom');
delete_site_option('wphi_template_custom');
delete_option('wphi_styling');
delete_site_option('wphi_styling');
delete_option('wphi_dom');
delete_site_option('wphi_dom');
delete_option('wphi_template');
delete_site_option('wphi_template');
delete_option('wphi_post_type_selection');
delete_site_option('wphi_post_type_selection');
delete_option('wphi_on_off_options');
delete_site_option('wphi_on_off_options');

