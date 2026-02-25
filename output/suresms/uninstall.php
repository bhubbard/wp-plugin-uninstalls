<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sms_footer_text');
delete_site_option('sms_footer_text');
delete_option('sms_username');
delete_site_option('sms_username');
delete_option('sms_password');
delete_site_option('sms_password');
delete_option('rem_sms_credit');
delete_site_option('rem_sms_credit');
delete_option('all_msg_send');
delete_site_option('all_msg_send');
delete_option('day_msg_stat');
delete_site_option('day_msg_stat');
delete_option('sms_server_status');
delete_site_option('sms_server_status');
delete_option('sms_server_msg');
delete_site_option('sms_server_msg');
delete_option('SMSUsername');
delete_site_option('SMSUsername');
delete_option('SMSPassword');
delete_site_option('SMSPassword');

