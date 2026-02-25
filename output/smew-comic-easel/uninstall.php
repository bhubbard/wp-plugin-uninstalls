<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drip_time');
delete_site_option('drip_time');
delete_option('drip_level');
delete_site_option('drip_level');
delete_option('image_size_full');
delete_site_option('image_size_full');
delete_option('image_size_large');
delete_site_option('image_size_large');
delete_option('image_size_medium');
delete_site_option('image_size_medium');
delete_option('restrict_image_size_full');
delete_site_option('restrict_image_size_full');
delete_option('restrict_image_size_large');
delete_site_option('restrict_image_size_large');
delete_option('restrict_image_size_medium');
delete_site_option('restrict_image_size_medium');
delete_option('drip_end_option');
delete_site_option('drip_end_option');
delete_option('drip_end');
delete_site_option('drip_end');
delete_option('drip_end_image_option');
delete_site_option('drip_end_image_option');

