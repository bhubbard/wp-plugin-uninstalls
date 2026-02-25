<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ngd_ship_option_checked');
delete_site_option('wp_ngd_ship_option_checked');

