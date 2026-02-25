<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('photo_collage_scan_cache_version');
delete_site_option('photo_collage_scan_cache_version');
delete_option('photo_collage_uninstall_preference');
delete_site_option('photo_collage_uninstall_preference');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('photo_collage_block_count');
delete_site_transient('photo_collage_block_count');

