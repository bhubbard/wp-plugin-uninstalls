-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_opencritic_default_score_format', 'wp_opencritic_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enable_review_data_to_open_critic', 'game_reviewed', 'author', 'review_quote', 'GameMissingTitle', 'GameMissing', 'score_format', 'score_numeric', 'recommended', 'platforms_reviewed', 'oc_game_details', 'SubmissionId', 'original_post_status', 'score_format_type', 'score_verdict');
DELETE FROM wp_usermeta WHERE meta_key IN ('enable_review_data_to_open_critic', 'game_reviewed', 'author', 'review_quote', 'GameMissingTitle', 'GameMissing', 'score_format', 'score_numeric', 'recommended', 'platforms_reviewed', 'oc_game_details', 'SubmissionId', 'original_post_status', 'score_format_type', 'score_verdict');
DELETE FROM wp_termmeta WHERE meta_key IN ('enable_review_data_to_open_critic', 'game_reviewed', 'author', 'review_quote', 'GameMissingTitle', 'GameMissing', 'score_format', 'score_numeric', 'recommended', 'platforms_reviewed', 'oc_game_details', 'SubmissionId', 'original_post_status', 'score_format_type', 'score_verdict');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enable_review_data_to_open_critic', 'game_reviewed', 'author', 'review_quote', 'GameMissingTitle', 'GameMissing', 'score_format', 'score_numeric', 'recommended', 'platforms_reviewed', 'oc_game_details', 'SubmissionId', 'original_post_status', 'score_format_type', 'score_verdict');

