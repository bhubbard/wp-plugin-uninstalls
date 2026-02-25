#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recipespn_options_changed'
wp option delete 'recipespn_options_remove'
wp option delete 'recipespn_recipe_slug'
wp option delete 'recipespn_pages_recipe'
wp option delete 'recipespn_url_main'
wp option delete 'recipespn_redirecting'

# Delete Transients
wp transient delete 'recipespn_just_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_child_birthdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_child_birthdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_child_birthdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_child_birthdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_user_current_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_user_current_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_user_current_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_user_current_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_user_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_user_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_user_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_user_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_recipe_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_recipe_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_recipe_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_recipe_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_recipe_periodicity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_recipe_periodicity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_recipe_periodicity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_recipe_periodicity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_recipe_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_recipe_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_recipe_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_recipe_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_recipe_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_recipe_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_recipe_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_recipe_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_owners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_owners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_owners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_owners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_ingredients_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_ingredients_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_ingredients_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_ingredients_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_steps_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_steps_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_steps_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_steps_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_steps_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_steps_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_steps_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_steps_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_steps_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_steps_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_steps_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_steps_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipespn_suggestions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipespn_suggestions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipespn_suggestions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipespn_suggestions'"
