<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flying_images_cdn_exclude_keywords');
delete_site_option('flying_images_cdn_exclude_keywords');
delete_option('flying_images_lazymethod');
delete_site_option('flying_images_lazymethod');
delete_option('flying_images_exclude_keywords');
delete_site_option('flying_images_exclude_keywords');
delete_option('flying_images_enable_cdn');
delete_site_option('flying_images_enable_cdn');
delete_option('flying_images_enable_lazyloading');
delete_site_option('flying_images_enable_lazyloading');
delete_option('flying_images_enable_responsive_images');
delete_site_option('flying_images_enable_responsive_images');
delete_option('flying_images_enable_compression');
delete_site_option('flying_images_enable_compression');
delete_option('flying_images_quality');
delete_site_option('flying_images_quality');
delete_option('FLYING_IMAGES_VERSION');
delete_site_option('FLYING_IMAGES_VERSION');
delete_option('flying_images_margin');
delete_site_option('flying_images_margin');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

