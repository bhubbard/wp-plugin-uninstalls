<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kt_color_grid_sets');
delete_site_option('kt_color_grid_sets');
delete_option('kt_color_grid_custom');
delete_site_option('kt_color_grid_custom');
delete_option('kt_color_grid_visual');
delete_site_option('kt_color_grid_visual');
delete_option('kt_color_grid_palette');
delete_site_option('kt_color_grid_palette');
delete_option('kt_color_grid_oceanwp_alpha');
delete_site_option('kt_color_grid_oceanwp_alpha');
delete_option('kt_color_grid_gp_alpha');
delete_site_option('kt_color_grid_gp_alpha');
delete_option('kt_color_grid_type');
delete_site_option('kt_color_grid_type');
delete_option('kt_color_grid_mce_reset');
delete_site_option('kt_color_grid_mce_reset');
delete_option('kt_color_grid_astra_theme');
delete_site_option('kt_color_grid_astra_theme');
delete_option('kt_color_grid_gp');
delete_site_option('kt_color_grid_gp');

