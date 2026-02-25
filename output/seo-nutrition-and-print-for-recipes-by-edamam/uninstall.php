<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edamam_recipe_db_version');
delete_site_option('edamam_recipe_db_version');
delete_option('edamam_partner_key');
delete_site_option('edamam_partner_key');
delete_option('recipe_logo');
delete_site_option('recipe_logo');
delete_option('recipe_background');
delete_site_option('recipe_background');
delete_option('recipe_nutritional_info');
delete_site_option('recipe_nutritional_info');
delete_option('recipe_title_hide');
delete_site_option('recipe_title_hide');
delete_option('recipe_image_hide');
delete_site_option('recipe_image_hide');
delete_option('recipe_image_hide_print');
delete_site_option('recipe_image_hide_print');
delete_option('recipe_print_link_hide');
delete_site_option('recipe_print_link_hide');
delete_option('recipe_ingredient_label');
delete_site_option('recipe_ingredient_label');
delete_option('recipe_ingredient_label_hide');
delete_site_option('recipe_ingredient_label_hide');
delete_option('recipe_ingredient_list_type');
delete_site_option('recipe_ingredient_list_type');
delete_option('recipe_instruction_label');
delete_site_option('recipe_instruction_label');
delete_option('recipe_instruction_label_hide');
delete_site_option('recipe_instruction_label_hide');
delete_option('recipe_instruction_list_type');
delete_site_option('recipe_instruction_list_type');
delete_option('recipe_notes_label');
delete_site_option('recipe_notes_label');
delete_option('recipe_notes_label_hide');
delete_site_option('recipe_notes_label_hide');
delete_option('recipe_prep_time_label');
delete_site_option('recipe_prep_time_label');
delete_option('recipe_prep_time_label_hide');
delete_site_option('recipe_prep_time_label_hide');
delete_option('recipe_cook_time_label');
delete_site_option('recipe_cook_time_label');
delete_option('recipe_cook_time_label_hide');
delete_site_option('recipe_cook_time_label_hide');
delete_option('recipe_total_time_label');
delete_site_option('recipe_total_time_label');
delete_option('recipe_total_time_label_hide');
delete_site_option('recipe_total_time_label_hide');
delete_option('recipe_serving_size_label');
delete_site_option('recipe_serving_size_label');
delete_option('recipe_serving_size_label_hide');
delete_site_option('recipe_serving_size_label_hide');
delete_option('recipe_rating_label');
delete_site_option('recipe_rating_label');
delete_option('recipe_rating_label_hide');
delete_site_option('recipe_rating_label_hide');
delete_option('recipe_image_width');
delete_site_option('recipe_image_width');
delete_option('recipe_outer_border_style');
delete_site_option('recipe_outer_border_style');

