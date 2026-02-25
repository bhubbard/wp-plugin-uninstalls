<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('playSMS-settings');
delete_site_option('playSMS-settings');
delete_option('playSMS-apiKey');
delete_site_option('playSMS-apiKey');
delete_option('playSMS-apiPass');
delete_site_option('playSMS-apiPass');
delete_option('playSMS-apiHeader');
delete_site_option('playSMS-apiHeader');
delete_option('PlaySMS_events_options');
delete_site_option('PlaySMS_events_options');
delete_option('smsApi-senderHeaders');
delete_site_option('smsApi-senderHeaders');

