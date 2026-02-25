<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_everything_settings');
delete_site_option('disable_everything_settings');

// Delete Transients
delete_transient('disable_everything_dbtype');
delete_site_transient('disable_everything_dbtype');
delete_transient('disable_everything_dbversion');
delete_site_transient('disable_everything_dbversion');

