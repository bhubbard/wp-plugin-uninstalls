<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tprb_general_options');
delete_site_option('tprb_general_options');
delete_option('restaurant_booking_settings');
delete_site_option('restaurant_booking_settings');
delete_option('tprb_notifications_options');
delete_site_option('tprb_notifications_options');
delete_option('tprb_jwt_secret_key');
delete_site_option('tprb_jwt_secret_key');
delete_option('tprb_security_options');
delete_site_option('tprb_security_options');
delete_option('tprb_admin_email');
delete_site_option('tprb_admin_email');
delete_option('tprb_notify_admin');
delete_site_option('tprb_notify_admin');
delete_option('tprb_notify_client');
delete_site_option('tprb_notify_client');
delete_option('tprb_email_subject');
delete_site_option('tprb_email_subject');
delete_option('tprb_email_template');
delete_site_option('tprb_email_template');
delete_option('restaurant_booking_weekly_availability');
delete_site_option('restaurant_booking_weekly_availability');

