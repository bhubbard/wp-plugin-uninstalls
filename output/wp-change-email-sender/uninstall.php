<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpces_email_sender_name');
delete_site_option('wpces_email_sender_name');
delete_option('wpces_sender_email_address');
delete_site_option('wpces_sender_email_address');

