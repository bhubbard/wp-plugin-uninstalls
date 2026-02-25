<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ssync_allow_ext');
delete_site_option('wp_ssync_allow_ext');
delete_option('wp_ssync_username');
delete_site_option('wp_ssync_username');
delete_option('wp_ssync_password');
delete_site_option('wp_ssync_password');
delete_option('wp_ssync_key');
delete_site_option('wp_ssync_key');
delete_option('wp_ssync_secret');
delete_site_option('wp_ssync_secret');
delete_option('wp_ssync_show_form');
delete_site_option('wp_ssync_show_form');
delete_option('wp_ssync_delete_file');
delete_site_option('wp_ssync_delete_file');
delete_option('wp_ssync_thank_message');
delete_site_option('wp_ssync_thank_message');
delete_option('wp_ssync_path');
delete_site_option('wp_ssync_path');
delete_option('wp_ssync_temp_path');
delete_site_option('wp_ssync_temp_path');
delete_option('wp_ssync_menu_pref');
delete_site_option('wp_ssync_menu_pref');
delete_option('wp_ssync_version_number');
delete_site_option('wp_ssync_version_number');

