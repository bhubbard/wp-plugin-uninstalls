<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smugins_active');
delete_site_option('smugins_active');
delete_option('smugins_option');
delete_site_option('smugins_option');

