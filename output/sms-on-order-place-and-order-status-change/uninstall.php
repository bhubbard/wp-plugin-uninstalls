<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sms-api-key');
delete_site_option('sms-api-key');
delete_option('sms-api-username');
delete_site_option('sms-api-username');
delete_option('sms-sender-id');
delete_site_option('sms-sender-id');

