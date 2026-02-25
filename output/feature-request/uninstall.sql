-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avfr_version', 'avfr_installed_before', 'avfr_post_registered', 'avfr_tax_option_moved', 'avfr_settings_groups', 'feature_request_version', 'avfr_settings_main', 'avfr_settings_features');
DELETE FROM wp_options WHERE option_name LIKE '%db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avfr_status', '_flag', '_avfr_total_votes', '_avfr_votes', 'avfr_max_votes', 'avfr_total_votes', 'avfr_comments_disabled', 'avfr_new_disabled', '_thumbnail_id', '_avfr_author_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avfr_status', '_flag', '_avfr_total_votes', '_avfr_votes', 'avfr_max_votes', 'avfr_total_votes', 'avfr_comments_disabled', 'avfr_new_disabled', '_thumbnail_id', '_avfr_author_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avfr_status', '_flag', '_avfr_total_votes', '_avfr_votes', 'avfr_max_votes', 'avfr_total_votes', 'avfr_comments_disabled', 'avfr_new_disabled', '_thumbnail_id', '_avfr_author_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avfr_status', '_flag', '_avfr_total_votes', '_avfr_votes', 'avfr_max_votes', 'avfr_total_votes', 'avfr_comments_disabled', 'avfr_new_disabled', '_thumbnail_id', '_avfr_author_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_has_voted';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_has_voted';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_has_voted';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_has_voted';

