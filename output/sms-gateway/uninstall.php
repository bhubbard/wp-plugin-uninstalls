<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sms_sender_api_key');
delete_site_option('sms_sender_api_key');
delete_option('sms_sender_capabilities');
delete_site_option('sms_sender_capabilities');
delete_option('sms_sender_test');
delete_site_option('sms_sender_test');

