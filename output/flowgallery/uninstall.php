<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flowgallery_use_fancybox');
delete_site_option('flowgallery_use_fancybox');
delete_option('flowgallery_use_wp_masonry');
delete_site_option('flowgallery_use_wp_masonry');
delete_option('flowgallery_sorting');
delete_site_option('flowgallery_sorting');
delete_option('flowgallery_dropshadow');
delete_site_option('flowgallery_dropshadow');
delete_option('flowgallery_square');
delete_site_option('flowgallery_square');
delete_option('flowgallery_resample');
delete_site_option('flowgallery_resample');
delete_option('flowgallery_padding');
delete_site_option('flowgallery_padding');

