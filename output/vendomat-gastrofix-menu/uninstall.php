<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('license_key');
delete_site_option('license_key');
delete_option('gf_last_sync');
delete_site_option('gf_last_sync');
delete_option('gf_datas');
delete_site_option('gf_datas');
delete_option('cloud_nr');
delete_site_option('cloud_nr');
delete_option('consumer_key');
delete_site_option('consumer_key');
delete_option('secret_key');
delete_site_option('secret_key');
delete_option('username');
delete_site_option('username');
delete_option('password');
delete_site_option('password');
delete_option('store_articles');
delete_site_option('store_articles');

