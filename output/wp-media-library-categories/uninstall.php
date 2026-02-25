<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmlc_settings');
delete_site_option('wpmlc_settings');

// Delete Transients
delete_transient('wpmlc-admin-activation-notice');
delete_site_transient('wpmlc-admin-activation-notice');

