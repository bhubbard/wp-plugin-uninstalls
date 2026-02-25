<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quick-featured-images-settings');
delete_site_option('quick-featured-images-settings');
delete_option('quick-featured-images-defaults');
delete_site_option('quick-featured-images-defaults');

// Delete Transients
delete_transient('quick-featured-images');
delete_site_transient('quick-featured-images');

