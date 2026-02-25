<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('barrierefrei_helper_font_size');
delete_site_option('barrierefrei_helper_font_size');
delete_option('barrierefrei_helper_color_choice');
delete_site_option('barrierefrei_helper_color_choice');
delete_option('barrierefrei_helper_contrast');
delete_site_option('barrierefrei_helper_contrast');
delete_option('barrierefrei_helper_toc_enabled');
delete_site_option('barrierefrei_helper_toc_enabled');
delete_option('barrierefrei_helper_toc_tag');
delete_site_option('barrierefrei_helper_toc_tag');
delete_option('barrierefrei_helper_last_cache_clear');
delete_site_option('barrierefrei_helper_last_cache_clear');

