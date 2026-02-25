<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tw_setting_twilio_account_sid');
delete_site_option('tw_setting_twilio_account_sid');
delete_option('tw_setting_twilio_auth_token');
delete_site_option('tw_setting_twilio_auth_token');
delete_option('tw_setting_twilio_number');
delete_site_option('tw_setting_twilio_number');

