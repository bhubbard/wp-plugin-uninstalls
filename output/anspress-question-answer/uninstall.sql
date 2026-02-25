-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anspress_opt', 'anspress_db_version', 'anspress_using_previous', 'anspress_addons', 'ap_categories_path', 'ap_user_path', 'anspress_reputation_events', 'ap_tags_path', 'anspress_updates', 'anspress_license', 'akismet_ssl_disabled', 'anspress_global', 'featured_questions', 'ap_pages_check', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'ap_cat_%';
DELETE FROM wp_options WHERE option_name LIKE 'anspress_session_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('create_ip', '__ap_spam', 'ap_category', 'ap_role', '_wp_page_template', 'anspress-image', '_ap_last_post_status', '__up_vote_casted', '__down_vote_casted', '__ap_unpublished_questions', '__ap_unpublished_answers', 'ap_reputations', '_ap_temp_media', '_ap_updated', '_views', '_ap_selected', '_ap_subscriber', '_ap_flag', '_ap_answers', '_ap_participants', '_ap_vote', '_ap_best_answer', '_ap_close', '__ap_activity', 'ap_reputation', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('create_ip', '__ap_spam', 'ap_category', 'ap_role', '_wp_page_template', 'anspress-image', '_ap_last_post_status', '__up_vote_casted', '__down_vote_casted', '__ap_unpublished_questions', '__ap_unpublished_answers', 'ap_reputations', '_ap_temp_media', '_ap_updated', '_views', '_ap_selected', '_ap_subscriber', '_ap_flag', '_ap_answers', '_ap_participants', '_ap_vote', '_ap_best_answer', '_ap_close', '__ap_activity', 'ap_reputation', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('create_ip', '__ap_spam', 'ap_category', 'ap_role', '_wp_page_template', 'anspress-image', '_ap_last_post_status', '__up_vote_casted', '__down_vote_casted', '__ap_unpublished_questions', '__ap_unpublished_answers', 'ap_reputations', '_ap_temp_media', '_ap_updated', '_views', '_ap_selected', '_ap_subscriber', '_ap_flag', '_ap_answers', '_ap_participants', '_ap_vote', '_ap_best_answer', '_ap_close', '__ap_activity', 'ap_reputation', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('create_ip', '__ap_spam', 'ap_category', 'ap_role', '_wp_page_template', 'anspress-image', '_ap_last_post_status', '__up_vote_casted', '__down_vote_casted', '__ap_unpublished_questions', '__ap_unpublished_answers', 'ap_reputations', '_ap_temp_media', '_ap_updated', '_views', '_ap_selected', '_ap_subscriber', '_ap_flag', '_ap_answers', '_ap_participants', '_ap_vote', '_ap_best_answer', '_ap_close', '__ap_activity', 'ap_reputation', 'description');

