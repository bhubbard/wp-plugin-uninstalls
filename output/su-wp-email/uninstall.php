<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('su_wp_email_name');
delete_site_option('su_wp_email_name');
delete_option('su_wp_email_address');
delete_site_option('su_wp_email_address');

