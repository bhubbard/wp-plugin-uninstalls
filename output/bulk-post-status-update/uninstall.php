<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-bulk-post-status-support-types');
delete_site_option('wp-bulk-post-status-support-types');
delete_option('wpbpus_remove_on_uninstall');
delete_site_option('wpbpus_remove_on_uninstall');

