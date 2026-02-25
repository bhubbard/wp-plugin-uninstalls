<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pj_cache_path');
delete_site_option('pj_cache_path');
delete_option('pj_cache_url');
delete_site_option('pj_cache_url');
delete_option('pj_insert_image');
delete_site_option('pj_insert_image');
delete_option('pj_linkto');
delete_site_option('pj_linkto');
delete_option('pj_linkto_single');
delete_site_option('pj_linkto_single');
delete_option('pj_viewer');
delete_site_option('pj_viewer');
delete_option('pj_gallery_columns');
delete_site_option('pj_gallery_columns');
delete_option('pj_gallery_size');
delete_site_option('pj_gallery_size');
delete_option('pj_jpeg_quality');
delete_site_option('pj_jpeg_quality');
delete_option('pj_custom_width');
delete_site_option('pj_custom_width');
delete_option('pj_custom_height');
delete_site_option('pj_custom_height');
delete_option('pj_custom_crop');
delete_site_option('pj_custom_crop');
delete_option('pj_resize_full');
delete_site_option('pj_resize_full');
delete_option('pj_full_width');
delete_site_option('pj_full_width');
delete_option('pj_full_height');
delete_site_option('pj_full_height');
delete_option('pj_custom_class');
delete_site_option('pj_custom_class');
delete_option('pj_custom_rel');
delete_site_option('pj_custom_rel');

