<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin-theme-login-logo');
delete_site_option('admin-theme-login-logo');
delete_option('admin-theme-primary-color');
delete_site_option('admin-theme-primary-color');
delete_option('admin-theme-small-logo');
delete_site_option('admin-theme-small-logo');
delete_option('admin-theme-custom-hover');
delete_site_option('admin-theme-custom-hover');
delete_option('admin-theme-rounded-corners');
delete_site_option('admin-theme-rounded-corners');
delete_option('admin-theme-dashboard_plugins');
delete_site_option('admin-theme-dashboard_plugins');
delete_option('admin-theme-dashboard_recent_comments');
delete_site_option('admin-theme-dashboard_recent_comments');
delete_option('admin-theme-dashboard_primary');
delete_site_option('admin-theme-dashboard_primary');
delete_option('admin-theme-dashboard_incoming_links');
delete_site_option('admin-theme-dashboard_incoming_links');
delete_option('admin-theme-dashboard_right_now');
delete_site_option('admin-theme-dashboard_right_now');
delete_option('admin-theme-dashboard_secondary');
delete_site_option('admin-theme-dashboard_secondary');
delete_option('admin-theme-dashboard_recent_drafts');
delete_site_option('admin-theme-dashboard_recent_drafts');
delete_option('admin-theme-dashboard_quick_press');
delete_site_option('admin-theme-dashboard_quick_press');
delete_option('admin-theme-wp_welcome_panel');
delete_site_option('admin-theme-wp_welcome_panel');

