<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miyn-banner-attachment');
delete_site_option('miyn-banner-attachment');
delete_option('miyn-secret-key');
delete_site_option('miyn-secret-key');
delete_option('miyn-business-logo');
delete_site_option('miyn-business-logo');
delete_option('photo_url');
delete_site_option('photo_url');
delete_option('background_image');
delete_site_option('background_image');
delete_option('change-widgets-image');
delete_site_option('change-widgets-image');
delete_option('miyn-exclude-pages');
delete_site_option('miyn-exclude-pages');

