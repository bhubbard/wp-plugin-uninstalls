-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vchat_review_notice_dismiss', 'csf_demo_mode', 'vchat-opt', 'themeatelier_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themeatelier_discount_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

