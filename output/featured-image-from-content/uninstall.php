<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fifc_featured_image_from_content_post_types');
delete_site_option('fifc_featured_image_from_content_post_types');

