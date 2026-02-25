<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cng-shortcode');
delete_site_option('cng-shortcode');
delete_option('cng-overlay');
delete_site_option('cng-overlay');
delete_option('cng-autoinsert');
delete_site_option('cng-autoinsert');
delete_option('cng-widget');
delete_site_option('cng-widget');

