-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptense_jobs', 'perfect_tense_api_key', 'ptense_api_key_valid', 'perfect_tense_app_key', 'ptense_comment_mark_spam', 'ptense_comment_min_score', 'ptense_post_check_score', 'ptense_save_post', 'ptense_save_post_draft_score', 'ptense_save_post_correct_score', 'ptense_hide_notice');
DELETE FROM wp_options WHERE option_name LIKE 'ptense_job_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ptense_score_last_checked', 'ptense_score', 'ptense_post_status', 'ptense_post_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('ptense_score_last_checked', 'ptense_score', 'ptense_post_status', 'ptense_post_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('ptense_score_last_checked', 'ptense_score', 'ptense_post_status', 'ptense_post_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ptense_score_last_checked', 'ptense_score', 'ptense_post_status', 'ptense_post_score');

