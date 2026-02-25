<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sms_from_email');
delete_site_option('sms_from_email');
delete_option('sms_from_name');
delete_site_option('sms_from_name');
delete_option('sms_default_subject');
delete_site_option('sms_default_subject');
delete_option('sms_new_notify');
delete_site_option('sms_new_notify');
delete_option('sms_publish_post');
delete_site_option('sms_publish_post');
delete_option('sms_new_notify_email');
delete_site_option('sms_new_notify_email');
delete_option('bf_easysms_widget_options');
delete_site_option('bf_easysms_widget_options');

