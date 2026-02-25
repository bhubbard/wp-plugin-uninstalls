<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmaw_ios_appid');
delete_site_option('pmaw_ios_appid');
delete_option('pmaw_android_appid');
delete_site_option('pmaw_android_appid');
delete_option('pmaw_android_title');
delete_site_option('pmaw_android_title');
delete_option('pmaw_android_author');
delete_site_option('pmaw_android_author');
delete_option('pmaw_android_icon');
delete_site_option('pmaw_android_icon');
delete_option('pmaw_android_app_store');
delete_site_option('pmaw_android_app_store');
delete_option('pmaw_android_price');
delete_site_option('pmaw_android_price');
delete_option('pmaw_android_button');
delete_site_option('pmaw_android_button');

