-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rgsi_activation_time', 'raogsi_credentials', 'raogsi_google_token', 'rgsi_review_notice_dismissed', 'srgsi_review_notice_dismissed', 'raogsi_worksheet_list');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sent_to_sheet');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sent_to_sheet');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sent_to_sheet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sent_to_sheet');

