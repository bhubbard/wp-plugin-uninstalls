<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_map_api_key');
delete_site_option('google_map_api_key');
delete_option('datapress_et_phone_home');
delete_site_option('datapress_et_phone_home');
delete_option('datapress_privacy_notice_shown');
delete_site_option('datapress_privacy_notice_shown');

