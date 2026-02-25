<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smsapi_notifications');
delete_site_option('smsapi_notifications');
delete_option('smsapi_subscription');
delete_site_option('smsapi_subscription');
delete_option('smsapi_client');
delete_site_option('smsapi_client');

