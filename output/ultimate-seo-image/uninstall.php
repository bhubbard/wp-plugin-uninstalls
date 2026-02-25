<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimate_seo_image_options');
delete_site_option('ultimate_seo_image_options');
delete_option('ultimate-seo-image');
delete_site_option('ultimate-seo-image');

