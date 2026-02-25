<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('udssl_tt_options');
delete_site_option('udssl_tt_options');
delete_option('udssl_tt_option');
delete_site_option('udssl_tt_option');

