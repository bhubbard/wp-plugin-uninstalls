-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbr_apikeys_limit', 'sbr_statuses', 'sbr_rating_notice', 'sbr_review_consent', 'sbr_notifications', 'sbr_apikeys', 'sbr_settings', 'sbr_bulk_sources', 'sbr_bulk_woocommerce', 'cff_style_settings', 'sbr_license_key', 'sbr_license_data', 'sbr_license_status', 'sbr_one_click_upgrade', 'sbr_db_version', 'sbr_usage_tracking_config', 'sbi_legacy_feed_settings', 'reviews_feed_rating_notice_waiting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sbr_ignore_dashboard_license_notice', 'sbr_ignore_new_user_sale_notice', 'sbr_ignore_bfcm_sale_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('sbr_ignore_dashboard_license_notice', 'sbr_ignore_new_user_sale_notice', 'sbr_ignore_bfcm_sale_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('sbr_ignore_dashboard_license_notice', 'sbr_ignore_new_user_sale_notice', 'sbr_ignore_bfcm_sale_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sbr_ignore_dashboard_license_notice', 'sbr_ignore_new_user_sale_notice', 'sbr_ignore_bfcm_sale_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_create_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

