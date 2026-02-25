<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('images_to_avif_settings');
delete_site_option('images_to_avif_settings');
delete_option('images_to_avif_active');
delete_site_option('images_to_avif_active');
delete_option('images_to_avif_methods');
delete_site_option('images_to_avif_methods');

