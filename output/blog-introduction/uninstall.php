<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bintro_enabled');
delete_site_option('bintro_enabled');
delete_option('bintro_from');
delete_site_option('bintro_from');
delete_option('bintro_settings_heading');
delete_site_option('bintro_settings_heading');
delete_option('bintro_settings_content');
delete_site_option('bintro_settings_content');
delete_option('bintro_page_permalink');
delete_site_option('bintro_page_permalink');
delete_option('bintro_show_heading');
delete_site_option('bintro_show_heading');
delete_option('bintro_show_content');
delete_site_option('bintro_show_content');
delete_option('bintro_show_for');
delete_site_option('bintro_show_for');
delete_option('bintro_show_on_pages');
delete_site_option('bintro_show_on_pages');
delete_option('bintro_show_on_home');
delete_site_option('bintro_show_on_home');
delete_option('bintro_heading_tag');
delete_site_option('bintro_heading_tag');
delete_option('bintro_style_intro');
delete_site_option('bintro_style_intro');
delete_option('bintro_size_heading');
delete_site_option('bintro_size_heading');
delete_option('bintro_style_heading');
delete_site_option('bintro_style_heading');
delete_option('bintro_size_content');
delete_site_option('bintro_size_content');
delete_option('bintro_style_content');
delete_site_option('bintro_style_content');
delete_option('bintro_at_loop_count');
delete_site_option('bintro_at_loop_count');
delete_option('bintro_debug');
delete_site_option('bintro_debug');

