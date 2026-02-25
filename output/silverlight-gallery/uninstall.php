<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slgallery_standard_width');
delete_site_option('slgallery_standard_width');
delete_option('slgallery_standard_height');
delete_site_option('slgallery_standard_height');
delete_option('slgallery_standard_leftarrow');
delete_site_option('slgallery_standard_leftarrow');
delete_option('slgallery_standard_rightarrow');
delete_site_option('slgallery_standard_rightarrow');
delete_option('slgallery_standard_pagenumbers');
delete_site_option('slgallery_standard_pagenumbers');
delete_option('slgallery_standard_thumbnails');
delete_site_option('slgallery_standard_thumbnails');
delete_option('slgallery_standard_preloader');
delete_site_option('slgallery_standard_preloader');
delete_option('slgallery_standard_fill');
delete_site_option('slgallery_standard_fill');
delete_option('slgallery_standard_bgColor');
delete_site_option('slgallery_standard_bgColor');
delete_option('slgallery_standard_bgMode');
delete_site_option('slgallery_standard_bgMode');
delete_option('slgallery_standard_version');
delete_site_option('slgallery_standard_version');
delete_option('slgallery_alternate_text');
delete_site_option('slgallery_alternate_text');

