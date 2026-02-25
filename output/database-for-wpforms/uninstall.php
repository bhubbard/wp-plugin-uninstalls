<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPFormsDB_view_install_date');
delete_site_option('WPFormsDB_view_install_date');
delete_option('wpformsdb_view_ignore_notice');
delete_site_option('wpformsdb_view_ignore_notice');

// Delete Transients
delete_transient('wpformsdb_add_ons_feed');
delete_site_transient('wpformsdb_add_ons_feed');

