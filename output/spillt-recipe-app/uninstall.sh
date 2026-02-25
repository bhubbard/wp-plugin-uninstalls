#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spillt_error_show'
wp option delete 'spillt_author_tax_choosen'
wp option delete 'spillt_author_phone'
wp option delete '_spilt_author_access_token_expiration_date'
wp option delete '_spilt_author_access_token'
wp option delete '_spilt_author_refresh_token'
wp option delete 'spillt_author_id'
wp option delete '_spillt_blog_user_supabase_token_response'
wp option delete 'spillt_activated'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'spillt_sync_all_reviews'
wp cron event delete 'spillt_sync_new_recipes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spillt_recipe_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spillt_recipe_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spillt_recipe_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spillt_recipe_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'og:image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'og:image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'og:image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'og:image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm_ingredients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm_ingredients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm_ingredients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm_ingredients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ingredients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_synced_to_spillt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_synced_to_spillt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_synced_to_spillt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_synced_to_spillt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm_parent_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm-comment-rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ERRating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spillt_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spillt_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spillt_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spillt_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spillt_tasty_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spillt_tasty_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spillt_tasty_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spillt_tasty_parent_id'"
