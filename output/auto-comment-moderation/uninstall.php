<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modhs_settings');
delete_site_option('modhs_settings');

// Delete Transients
delete_transient('modhs-admin-notice-activate');
delete_site_transient('modhs-admin-notice-activate');

