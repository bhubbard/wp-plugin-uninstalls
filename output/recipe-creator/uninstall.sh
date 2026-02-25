#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recipe_creator__last_successful_migration'
wp option delete 'recipe_creator__thumbnail_size'
wp option delete 'recipe_creator__show_jump_to_recipe'
wp option delete 'recipe_creator__primary_color'
wp option delete 'recipe_creator__primary_color_contrast'
wp option delete 'recipe_creator__primary_color_light'
wp option delete 'recipe_creator__primary_color_light_contrast'
wp option delete 'recipe_creator__primary_color_dark'
wp option delete 'recipe_creator__secondary_color'
wp option delete 'recipe_creator__secondary_color_contrast'
wp option delete 'recipe_creator__background_color'
wp option delete 'recipe_creator__background_color_contrast'
wp option delete 'recipe_creator__show_box_shadow'
wp option delete 'recipe_creator__show_border'
wp option delete 'recipe_creator__border_radius'
wp option delete 'recipe_creator__instagram__username'
wp option delete 'recipe_creator__instagram__hashtag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__rating_1_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__rating_1_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__rating_1_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__rating_1_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__rating_2_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__rating_2_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__rating_2_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__rating_2_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__rating_3_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__rating_3_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__rating_3_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__rating_3_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__rating_4_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__rating_4_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__rating_4_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__rating_4_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipe_creator__rating_5_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipe_creator__rating_5_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipe_creator__rating_5_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipe_creator__rating_5_votes'"
