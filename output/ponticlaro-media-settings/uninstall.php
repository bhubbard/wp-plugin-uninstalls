<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ponticlaro_image_path');
delete_site_option('ponticlaro_image_path');
delete_option('ponticlaro_image_attribs');
delete_site_option('ponticlaro_image_attribs');
delete_option('ponticlaro_image_vals');
delete_site_option('ponticlaro_image_vals');
delete_option('ponticlaro_image_val_custom');
delete_site_option('ponticlaro_image_val_custom');
delete_option('ponticlaro_media_options');
delete_site_option('ponticlaro_media_options');
delete_option('ponticlaro_image_path_saved');
delete_site_option('ponticlaro_image_path_saved');

