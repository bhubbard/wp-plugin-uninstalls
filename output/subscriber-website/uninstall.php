<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('on_send_admin');
delete_site_option('on_send_admin');
delete_option('on_send_subscriber');
delete_site_option('on_send_subscriber');
delete_option('messenger_email_to');
delete_site_option('messenger_email_to');

