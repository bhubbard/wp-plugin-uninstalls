<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socialmcg_title_font_size');
delete_site_option('socialmcg_title_font_size');
delete_option('socialmcg_description_font_size');
delete_site_option('socialmcg_description_font_size');
delete_option('socialmcg_title_y_position');
delete_site_option('socialmcg_title_y_position');
delete_option('socialmcg_description_y_position');
delete_site_option('socialmcg_description_y_position');
delete_option('socialmcg_output_format');
delete_site_option('socialmcg_output_format');
delete_option('socialmcg_jpeg_quality');
delete_site_option('socialmcg_jpeg_quality');
delete_option('socialmcg_template_image_id');
delete_site_option('socialmcg_template_image_id');

// Delete Transients
delete_transient('socialmcg_font_check');
delete_site_transient('socialmcg_font_check');

