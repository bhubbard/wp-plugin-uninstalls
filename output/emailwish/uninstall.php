<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailwish_secret');
delete_site_option('emailwish_secret');
delete_option('emailwish_customer_id');
delete_site_option('emailwish_customer_id');
delete_option('emailwish_installed');
delete_site_option('emailwish_installed');

