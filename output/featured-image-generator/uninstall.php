<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fig_downloaded');
delete_site_option('fig_downloaded');
delete_option('fig_unsplash_api');
delete_site_option('fig_unsplash_api');
delete_option('fig_thumb_defaut_size_width');
delete_site_option('fig_thumb_defaut_size_width');
delete_option('fig_thumb_defaut_size_height');
delete_site_option('fig_thumb_defaut_size_height');
delete_option('fig_font_family');
delete_site_option('fig_font_family');
delete_option('fig_pixabay_api');
delete_site_option('fig_pixabay_api');
delete_option('fig_pixabay_safesearch');
delete_site_option('fig_pixabay_safesearch');
delete_option('fig_post_type');
delete_site_option('fig_post_type');

