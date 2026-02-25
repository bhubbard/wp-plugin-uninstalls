<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('banner_options');
delete_site_option('banner_options');

// Delete Transients
delete_transient('notice-transient');
delete_site_transient('notice-transient');
delete_transient('fx-admin-notice-example');
delete_site_transient('fx-admin-notice-example');

