<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginsecurity_version');
delete_site_option('loginsecurity_version');
delete_option('loginsecurity_options');
delete_site_option('loginsecurity_options');
delete_option('loginsecurity_last_reset');
delete_site_option('loginsecurity_last_reset');
delete_option('loginsecurity_whitelist');
delete_site_option('loginsecurity_whitelist');
delete_option('loginsecurity_blacklist');
delete_site_option('loginsecurity_blacklist');
delete_option('lz_version');
delete_site_option('lz_version');
delete_option('loginsecurity_ins_time');
delete_site_option('loginsecurity_ins_time');
delete_option('site_name');
delete_site_option('site_name');
delete_option('loginsecurity_license');
delete_site_option('loginsecurity_license');
delete_option('rwl_page');
delete_site_option('rwl_page');
delete_option('rwl_redirect');
delete_site_option('rwl_redirect');
delete_option('rwl_admin');
delete_site_option('rwl_admin');

