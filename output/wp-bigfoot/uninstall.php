<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbf-options');
delete_site_option('wpbf-options');
delete_option('wpacc_settings');
delete_site_option('wpacc_settings');

