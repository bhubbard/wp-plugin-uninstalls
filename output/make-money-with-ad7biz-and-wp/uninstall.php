<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ad7_biz_id');
delete_site_option('wp_ad7_biz_id');
delete_option('wp_ad7_biz_type');
delete_site_option('wp_ad7_biz_type');
delete_option('wp_ad7_biz_domains');
delete_site_option('wp_ad7_biz_domains');
delete_option('wp_ad7_biz_entry');
delete_site_option('wp_ad7_biz_entry');
delete_option('wp_ad7_biz_convert');
delete_site_option('wp_ad7_biz_convert');
delete_option('wp_ad7_biz_enable');
delete_site_option('wp_ad7_biz_enable');

