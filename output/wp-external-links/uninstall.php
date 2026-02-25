<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpel-version');
delete_site_option('wpel-version');
delete_option('wpel-pointers');
delete_site_option('wpel-pointers');
delete_option('wpel-first-install');
delete_site_option('wpel-first-install');
delete_option('wpel-external-link-settings');
delete_site_option('wpel-external-link-settings');
delete_option('wp_external_links-main');
delete_site_option('wp_external_links-main');
delete_option('wp_external_links-seo');
delete_site_option('wp_external_links-seo');
delete_option('wp_external_links-style');
delete_site_option('wp_external_links-style');
delete_option('wp_external_links-extra');
delete_site_option('wp_external_links-extra');
delete_option('wp_external_links-screen');
delete_site_option('wp_external_links-screen');
delete_option('wp_external_links-meta');
delete_site_option('wp_external_links-meta');
delete_option('wpel-internal-link-settings');
delete_site_option('wpel-internal-link-settings');
delete_option('wpel-excluded-link-settings');
delete_site_option('wpel-excluded-link-settings');
delete_option('wpel-exceptions-settings');
delete_site_option('wpel-exceptions-settings');
delete_option('wpel-admin-settings');
delete_site_option('wpel-admin-settings');
delete_option('wpel-network-settings');
delete_site_option('wpel-network-settings');
delete_option('wpel-network-admin-settings');
delete_site_option('wpel-network-admin-settings');
delete_option('wpel-show-notice');
delete_site_option('wpel-show-notice');
delete_option('wpel-notice-dismissed-rate');
delete_site_option('wpel-notice-dismissed-rate');

