<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jr_resizeupload_version');
delete_site_option('jr_resizeupload_version');
delete_option('jr_resizeupload_width');
delete_site_option('jr_resizeupload_width');
delete_option('jr_resizeupload_height');
delete_site_option('jr_resizeupload_height');
delete_option('jr_resizeupload_quality');
delete_site_option('jr_resizeupload_quality');
delete_option('jr_resizeupload_resize_yesno');
delete_site_option('jr_resizeupload_resize_yesno');
delete_option('jr_resizeupload_recompress_yesno');
delete_site_option('jr_resizeupload_recompress_yesno');
delete_option('jr_resizeupload_convertbmp_yesno');
delete_site_option('jr_resizeupload_convertbmp_yesno');
delete_option('jr_resizeupload_convertpng_yesno');
delete_site_option('jr_resizeupload_convertpng_yesno');
delete_option('jr_resizeupload_convertgif_yesno');
delete_site_option('jr_resizeupload_convertgif_yesno');
delete_option('jr_resizeupload_news');
delete_site_option('jr_resizeupload_news');

