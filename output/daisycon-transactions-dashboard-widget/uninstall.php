<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daisycon_transactions_publisher_id');
delete_site_option('daisycon_transactions_publisher_id');
delete_option('daisycon_transactions_username');
delete_site_option('daisycon_transactions_username');
delete_option('daisycon_transactions_password');
delete_site_option('daisycon_transactions_password');

