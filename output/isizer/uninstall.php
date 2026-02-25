<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('isizer_removed_sizes');
delete_site_option('isizer_removed_sizes');
delete_option('isizer_added_sizes');
delete_site_option('isizer_added_sizes');

