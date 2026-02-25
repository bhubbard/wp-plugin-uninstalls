<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvp_popup');
delete_site_option('wpvp_popup');
delete_option('_site_transient_disable-ryv-notice');
delete_site_option('_site_transient_disable-ryv-notice');
delete_option('wp_video_popup_plugin_activated');
delete_site_option('wp_video_popup_plugin_activated');
delete_option('wp_video_popup_install_date');
delete_site_option('wp_video_popup_install_date');
delete_option('wp_video_popup_review_notice');
delete_site_option('wp_video_popup_review_notice');

