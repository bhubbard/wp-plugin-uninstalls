<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phone_number');
delete_site_option('phone_number');
delete_option('email_address');
delete_site_option('email_address');

