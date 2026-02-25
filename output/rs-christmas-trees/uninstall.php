<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rs_christmas_trees_display_set');
delete_site_option('rs_christmas_trees_display_set');
delete_option('rs_christmas_trees_hide_click_activation');
delete_site_option('rs_christmas_trees_hide_click_activation');
delete_option('rs_christmas_trees_active_tree');
delete_site_option('rs_christmas_trees_active_tree');
delete_option('rs_christmas_trees_display_type');
delete_site_option('rs_christmas_trees_display_type');
delete_option('rs_christmas_trees_display_type_footer');
delete_site_option('rs_christmas_trees_display_type_footer');
delete_option('rs_christmas_trees_display_location');
delete_site_option('rs_christmas_trees_display_location');
delete_option('rs_christmas_trees_sticky');
delete_site_option('rs_christmas_trees_sticky');
delete_option('rs_display_snow');
delete_site_option('rs_display_snow');
delete_option('rs_display_norma_snow_or_3d');
delete_site_option('rs_display_norma_snow_or_3d');
delete_option('rs_maximum_fall_speed');
delete_site_option('rs_maximum_fall_speed');
delete_option('rs_flake_minimum_size');
delete_site_option('rs_flake_minimum_size');
delete_option('rs_flake_maximum_size');
delete_site_option('rs_flake_maximum_size');
delete_option('rs_show_on_page');
delete_site_option('rs_show_on_page');
delete_option('rs_show_flake_type');
delete_site_option('rs_show_flake_type');
delete_option('rs_show_z_index');
delete_site_option('rs_show_z_index');
delete_option('rs_show_color');
delete_site_option('rs_show_color');
delete_option('christmas_schedule_before_date');
delete_site_option('christmas_schedule_before_date');
delete_option('christmas_schedule_active');
delete_site_option('christmas_schedule_active');

