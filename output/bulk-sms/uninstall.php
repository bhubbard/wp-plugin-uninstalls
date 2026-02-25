<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bulksms_admin_mobile');
delete_site_option('bulksms_admin_mobile');
delete_option('bulksms_gateway_domain');
delete_site_option('bulksms_gateway_domain');
delete_option('bulksms_username');
delete_site_option('bulksms_username');
delete_option('bulksms_password');
delete_site_option('bulksms_password');
delete_option('bulksms_sender');
delete_site_option('bulksms_sender');
delete_option('bulksms_send_visitor_msg');
delete_site_option('bulksms_send_visitor_msg');
delete_option('bulksms_visitor_message');
delete_site_option('bulksms_visitor_message');
delete_option('bulksms_send_visitor_message');
delete_site_option('bulksms_send_visitor_message');

