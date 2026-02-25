<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('check_maintenance');
delete_site_option('check_maintenance');
delete_option('check_automatic_formatting');
delete_site_option('check_automatic_formatting');
delete_option('check_rsd_link');
delete_site_option('check_rsd_link');
delete_option('check_wlwmanifest_link');
delete_site_option('check_wlwmanifest_link');
delete_option('check_trw_metadesc');
delete_site_option('check_trw_metadesc');
delete_option('check_shortcode_widgets');
delete_site_option('check_shortcode_widgets');
delete_option('check_login_errors');
delete_site_option('check_login_errors');
delete_option('check_secure_functions');
delete_site_option('check_secure_functions');
delete_option('check_restrict_access_admin_panel');
delete_site_option('check_restrict_access_admin_panel');
delete_option('check_remove_version_wp');
delete_site_option('check_remove_version_wp');
delete_option('check_remove_feed_generator');
delete_site_option('check_remove_feed_generator');
delete_option('check_disable_autosave');
delete_site_option('check_disable_autosave');
delete_option('check_post_thumbnails');
delete_site_option('check_post_thumbnails');
delete_option('check_wp_default_editor');
delete_site_option('check_wp_default_editor');
delete_option('check_disable_default_widgets');
delete_site_option('check_disable_default_widgets');
delete_option('check_remove_margin_top');
delete_site_option('check_remove_margin_top');
delete_option('check_jpeg_quality');
delete_site_option('check_jpeg_quality');
delete_option('check_gallery_settings');
delete_site_option('check_gallery_settings');
delete_option('check_more_buttons_editor');
delete_site_option('check_more_buttons_editor');

