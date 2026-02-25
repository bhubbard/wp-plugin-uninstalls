<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thumbnails_per_page');
delete_site_option('thumbnails_per_page');
delete_option('use_gallery_shortcode');
delete_site_option('use_gallery_shortcode');

