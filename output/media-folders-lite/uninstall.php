<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mediafolders_option');
delete_site_option('mediafolders_option');

// Delete Transients
delete_transient('admin-notice');
delete_site_transient('admin-notice');

