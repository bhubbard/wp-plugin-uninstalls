<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recipeseo_ingredient_label');
delete_site_option('recipeseo_ingredient_label');
delete_option('recipeseo_ingredient_label_hide');
delete_site_option('recipeseo_ingredient_label_hide');
delete_option('recipeseo_ingredient_list_type');
delete_site_option('recipeseo_ingredient_list_type');
delete_option('recipeseo_instruction_label');
delete_site_option('recipeseo_instruction_label');
delete_option('recipeseo_instruction_label_hide');
delete_site_option('recipeseo_instruction_label_hide');
delete_option('recipeseo_instruction_list_type');
delete_site_option('recipeseo_instruction_list_type');
delete_option('recipeseo_prep_time_label');
delete_site_option('recipeseo_prep_time_label');
delete_option('recipeseo_prep_time_label_hide');
delete_site_option('recipeseo_prep_time_label_hide');
delete_option('recipeseo_cook_time_label');
delete_site_option('recipeseo_cook_time_label');
delete_option('recipeseo_cook_time_label_hide');
delete_site_option('recipeseo_cook_time_label_hide');
delete_option('recipeseo_total_time_label');
delete_site_option('recipeseo_total_time_label');
delete_option('recipeseo_total_time_label_hide');
delete_site_option('recipeseo_total_time_label_hide');
delete_option('recipeseo_yield_label');
delete_site_option('recipeseo_yield_label');
delete_option('recipeseo_yield_label_hide');
delete_site_option('recipeseo_yield_label_hide');
delete_option('recipeseo_serving_size_label');
delete_site_option('recipeseo_serving_size_label');
delete_option('recipeseo_serving_size_label_hide');
delete_site_option('recipeseo_serving_size_label_hide');
delete_option('recipeseo_calories_label');
delete_site_option('recipeseo_calories_label');
delete_option('recipeseo_calories_label_hide');
delete_site_option('recipeseo_calories_label_hide');
delete_option('recipeseo_fat_label');
delete_site_option('recipeseo_fat_label');
delete_option('recipeseo_fat_label_hide');
delete_site_option('recipeseo_fat_label_hide');
delete_option('amd_recipeseo_db_version');
delete_site_option('amd_recipeseo_db_version');

