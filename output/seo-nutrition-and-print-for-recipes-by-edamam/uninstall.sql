-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edamam_recipe_db_version', 'edamam_partner_key', 'recipe_logo', 'recipe_background', 'recipe_nutritional_info', 'recipe_title_hide', 'recipe_image_hide', 'recipe_image_hide_print', 'recipe_print_link_hide', 'recipe_ingredient_label', 'recipe_ingredient_label_hide', 'recipe_ingredient_list_type', 'recipe_instruction_label', 'recipe_instruction_label_hide', 'recipe_instruction_list_type', 'recipe_notes_label', 'recipe_notes_label_hide', 'recipe_prep_time_label', 'recipe_prep_time_label_hide', 'recipe_cook_time_label', 'recipe_cook_time_label_hide', 'recipe_total_time_label', 'recipe_total_time_label_hide', 'recipe_serving_size_label', 'recipe_serving_size_label_hide', 'recipe_rating_label', 'recipe_rating_label_hide', 'recipe_image_width', 'recipe_outer_border_style');

