<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srym_sms_start_time');
delete_site_option('srym_sms_start_time');
delete_option('srym_sms_end_time');
delete_site_option('srym_sms_end_time');
delete_option('srym_sms_enabled');
delete_site_option('srym_sms_enabled');

