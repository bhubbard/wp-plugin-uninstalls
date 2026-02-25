<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exodox_publisher_id');
delete_site_option('exodox_publisher_id');
delete_option('exodox_publisher_api_key');
delete_site_option('exodox_publisher_api_key');
delete_option('exodox_show_lock_info');
delete_site_option('exodox_show_lock_info');
delete_option('exodox_show_create_account');
delete_site_option('exodox_show_create_account');
delete_option('exodox_show_report_abuse_link');
delete_site_option('exodox_show_report_abuse_link');
delete_option('exodox_dark_mode');
delete_site_option('exodox_dark_mode');
delete_option('exodox_popup_alignment');
delete_site_option('exodox_popup_alignment');
delete_option('exodox_show_excerpt');
delete_site_option('exodox_show_excerpt');
delete_option('exodox_disable_listing');
delete_site_option('exodox_disable_listing');
delete_option('exodox_lock_pages');
delete_site_option('exodox_lock_pages');
delete_option('exodox_lock_archives');
delete_site_option('exodox_lock_archives');
delete_option('exodox_redirect_pages');
delete_site_option('exodox_redirect_pages');
delete_option('exodox_replace_wp_header');
delete_site_option('exodox_replace_wp_header');
delete_option('exodox_replace_wp_footer');
delete_site_option('exodox_replace_wp_footer');

