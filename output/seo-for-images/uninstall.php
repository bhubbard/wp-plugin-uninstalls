<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_for_images_alt');
delete_site_option('seo_for_images_alt');
delete_option('seo_for_images_title');
delete_site_option('seo_for_images_title');
delete_option('seo_for_images_override');
delete_site_option('seo_for_images_override');
delete_option('seo_for_images_override_title');
delete_site_option('seo_for_images_override_title');
delete_option('seo_for_images_notice');
delete_site_option('seo_for_images_notice');

