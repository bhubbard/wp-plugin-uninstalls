<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_private_settings');
delete_site_option('wp_private_settings');
delete_option('wp_private_replacement_type');
delete_site_option('wp_private_replacement_type');
delete_option('wp_private_before_html');
delete_site_option('wp_private_before_html');
delete_option('wp_private_after_html');
delete_site_option('wp_private_after_html');
delete_option('wp_private_not_authorized_text');
delete_site_option('wp_private_not_authorized_text');
delete_option('wp_private_selected_users');
delete_site_option('wp_private_selected_users');
delete_option('wp_private_custom_login_page_url');
delete_site_option('wp_private_custom_login_page_url');
delete_option('wp_private_linkback_enable');
delete_site_option('wp_private_linkback_enable');

