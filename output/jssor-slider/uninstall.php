<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_jssor_slider_instance_id');
delete_site_option('wp_jssor_slider_instance_id');
delete_option('wp_jssor_slider_db_version');
delete_site_option('wp_jssor_slider_db_version');
delete_option('wjssl-update-check-short');
delete_site_option('wjssl-update-check-short');
delete_option('wjssl-latest-version');
delete_site_option('wjssl-latest-version');
delete_option('wjssl-stable-version');
delete_site_option('wjssl-stable-version');
delete_option('wjssl-beta-version');
delete_site_option('wjssl-beta-version');
delete_option('wjssl-update-check');
delete_site_option('wjssl-update-check');
delete_option('wjssl_acckey');
delete_site_option('wjssl_acckey');
delete_option('wjssl_purchcode');
delete_site_option('wjssl_purchcode');
delete_option('wjssl_actcode');
delete_site_option('wjssl_actcode');
delete_option('wjssl_activate_request_time');
delete_site_option('wjssl_activate_request_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('wjssl_check_slider_files_hook');

