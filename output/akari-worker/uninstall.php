<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('akari_worker_available_storage');
delete_site_option('akari_worker_available_storage');
delete_option('akari_worker_max_upload_size');
delete_site_option('akari_worker_max_upload_size');
delete_option('akari_worker_google_analytics_id');
delete_site_option('akari_worker_google_analytics_id');
delete_option('akari_worker_meta_pixel_id');
delete_site_option('akari_worker_meta_pixel_id');
delete_option('akari_worker_custom_script');
delete_site_option('akari_worker_custom_script');

