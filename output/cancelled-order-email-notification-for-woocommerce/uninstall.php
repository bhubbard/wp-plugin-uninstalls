<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cancelled_order_email_enabled');
delete_site_option('cancelled_order_email_enabled');
delete_option('cancorem_email_subject');
delete_site_option('cancorem_email_subject');
delete_option('cancelled_order_email_message');
delete_site_option('cancelled_order_email_message');
delete_option('cancorem_email_message_html');
delete_site_option('cancorem_email_message_html');
delete_option('cancelled_order_email_count');
delete_site_option('cancelled_order_email_count');

