<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spephe_plugin_options');
delete_site_option('spephe_plugin_options');

// Delete Transients
delete_transient('eph-admin-notice-example');
delete_site_transient('eph-admin-notice-example');

