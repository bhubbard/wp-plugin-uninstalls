#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cooked_version'
wp option delete 'cooked_delicious_recipes_imported'
wp option delete 'cooked_wp_recipe_maker_imported'
wp option delete 'cooked_related_calculation_last'
wp option delete 'cooked_settings'
wp option delete 'cooked_import'
wp option delete 'cooked_import_saved'
wp option delete 'cooked_settings_saved'
wp option delete 'cooked_related_version'
wp option delete 'cooked_settings_version'
wp option delete 'cooked_pro_settings_version'

# Delete Transients
wp transient delete 'cooked_classic_recipes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_message' OR option_name LIKE '_site_transient_%_message'"
wp transient delete 'cooked_widget_recipes_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cooked_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cooked_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cooked_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cooked_user_meta'"
