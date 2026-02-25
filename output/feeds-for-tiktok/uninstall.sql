-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbtt_statuses', 'sbtt_resize_images_data', 'sbtt_global_settings', 'active_sitewide_plugins', 'sbtt_rating_notice', 'sbtt_review_consent', 'sbtt_one_click_upgrade', 'sbtt_islicence_upgraded', 'sbtt_upgraded_info', 'sbtt_db_version', 'sbtt_usage_tracking_config', 'sbtt_settings', 'tiktok_feed_rating_notice_waiting', 'sbtt_heic_capability');
DELETE FROM wp_options WHERE option_name LIKE 'sbtt_new_source_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sbtt_ignore_new_user_sale_notice', 'sbtt_ignore_bfcm_sale_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('sbtt_ignore_new_user_sale_notice', 'sbtt_ignore_bfcm_sale_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('sbtt_ignore_new_user_sale_notice', 'sbtt_ignore_bfcm_sale_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sbtt_ignore_new_user_sale_notice', 'sbtt_ignore_bfcm_sale_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

