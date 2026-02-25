#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'delicious_recipes_first_time_activation_flag'
wp option delete 'delicious_recipe_settings'
wp option delete 'delicious_recipes_queue_flush_rewrite_rules'
wp option delete 'delicious_recipes_demo_imports'
wp option delete 'best_season_option'
wp option delete 'delicious_recipes_auto_link_ingredients'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'cooked_settings'
wp option delete '_dr_import_recent_popular_shortcodes'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'delicious_recipes_session_name'
wp option delete 'ingredients_image_option'

# Delete Transients
wp transient delete 'dr_recipe_offset'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uploaded_user_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uploaded_user_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uploaded_user_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uploaded_user_avatar_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delicious_recipes_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delicious_recipes_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delicious_recipes_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delicious_recipes_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_recipe_total_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_recipe_total_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_recipe_total_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_recipe_total_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_classic_editor_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_classic_editor_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_classic_editor_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_classic_editor_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_ai_integration_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_ai_integration_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_ai_integration_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_ai_integration_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_chicory_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_chicory_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_chicory_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_chicory_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_delicious_featured_recipe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_delicious_featured_recipe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_delicious_featured_recipe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_delicious_featured_recipe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_best_season'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_best_season'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_best_season'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_best_season'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_difficulty_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_difficulty_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_difficulty_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_difficulty_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_recipe_ingredients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_recipe_ingredients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_recipe_ingredients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_recipe_ingredients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_ingredient_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_ingredient_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_ingredient_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_ingredient_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delicious_recipes_equipment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delicious_recipes_equipment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delicious_recipes_equipment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delicious_recipes_equipment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_file_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_file_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_file_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_file_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dr_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dr_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dr_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dr_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recipe_likes_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recipe_likes_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recipe_likes_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recipe_likes_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delicious_recipes_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delicious_recipes_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delicious_recipes_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delicious_recipes_user_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delicious_recipes_wishlists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delicious_recipes_wishlists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delicious_recipes_wishlists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delicious_recipes_wishlists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'br_recipe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'br_recipe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'br_recipe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'br_recipe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'br_recipe_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'br_recipe_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'br_recipe_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'br_recipe_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy-thumbnail-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy-thumbnail-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy-thumbnail-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy-thumbnail-id'"
