<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swp_woo');
delete_site_option('swp_woo');
delete_option('swp_edd');
delete_site_option('swp_edd');

