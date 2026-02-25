<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twt_setting_countries');
delete_site_option('twt_setting_countries');
delete_option('twt_setting_number');
delete_site_option('twt_setting_number');
delete_option('twt_setting_welcome');
delete_site_option('twt_setting_welcome');
delete_option('twt_setting_account_sid');
delete_site_option('twt_setting_account_sid');
delete_option('twt_setting_auth_token');
delete_site_option('twt_setting_auth_token');

