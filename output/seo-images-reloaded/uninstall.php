<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_images_reloaded_options');
delete_site_option('seo_images_reloaded_options');
delete_option('seo_images_reloaded_secret_id');
delete_site_option('seo_images_reloaded_secret_id');

