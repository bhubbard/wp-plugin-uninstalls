<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embed_image_links_max_width_percentage');
delete_site_option('embed_image_links_max_width_percentage');
delete_option('embed_image_links_alignment');
delete_site_option('embed_image_links_alignment');

