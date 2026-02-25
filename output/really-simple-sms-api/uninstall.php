<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sms_url');
delete_site_option('sms_url');
delete_option('sms_user');
delete_site_option('sms_user');
delete_option('sms_password');
delete_site_option('sms_password');
delete_option('sms_sender_id');
delete_site_option('sms_sender_id');
delete_option('sms_mobile');
delete_site_option('sms_mobile');
delete_option('sms_msg');
delete_site_option('sms_msg');

