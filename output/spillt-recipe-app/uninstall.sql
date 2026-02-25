-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spillt_error_show', 'spillt_author_tax_choosen', 'spillt_author_phone', '_spilt_author_access_token_expiration_date', '_spilt_author_access_token', '_spilt_author_refresh_token', 'spillt_author_id', '_spillt_blog_user_supabase_token_response', 'spillt_activated', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spillt_recipe_sync', 'og:image', 'wprm_ingredients', 'ingredients', 'date_synced_to_spillt', 'wprm_parent_post_id', 'wprm-comment-rating', 'ERRating', 'spillt_comment', 'spillt_tasty_parent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('spillt_recipe_sync', 'og:image', 'wprm_ingredients', 'ingredients', 'date_synced_to_spillt', 'wprm_parent_post_id', 'wprm-comment-rating', 'ERRating', 'spillt_comment', 'spillt_tasty_parent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('spillt_recipe_sync', 'og:image', 'wprm_ingredients', 'ingredients', 'date_synced_to_spillt', 'wprm_parent_post_id', 'wprm-comment-rating', 'ERRating', 'spillt_comment', 'spillt_tasty_parent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spillt_recipe_sync', 'og:image', 'wprm_ingredients', 'ingredients', 'date_synced_to_spillt', 'wprm_parent_post_id', 'wprm-comment-rating', 'ERRating', 'spillt_comment', 'spillt_tasty_parent_id');

