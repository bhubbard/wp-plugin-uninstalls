#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recipeseo_ingredient_label'
wp option delete 'recipeseo_ingredient_label_hide'
wp option delete 'recipeseo_ingredient_list_type'
wp option delete 'recipeseo_instruction_label'
wp option delete 'recipeseo_instruction_label_hide'
wp option delete 'recipeseo_instruction_list_type'
wp option delete 'recipeseo_prep_time_label'
wp option delete 'recipeseo_prep_time_label_hide'
wp option delete 'recipeseo_cook_time_label'
wp option delete 'recipeseo_cook_time_label_hide'
wp option delete 'recipeseo_total_time_label'
wp option delete 'recipeseo_total_time_label_hide'
wp option delete 'recipeseo_yield_label'
wp option delete 'recipeseo_yield_label_hide'
wp option delete 'recipeseo_serving_size_label'
wp option delete 'recipeseo_serving_size_label_hide'
wp option delete 'recipeseo_calories_label'
wp option delete 'recipeseo_calories_label_hide'
wp option delete 'recipeseo_fat_label'
wp option delete 'recipeseo_fat_label_hide'
wp option delete 'amd_recipeseo_db_version'

