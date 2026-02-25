-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpbw_settings', 'cpbw_version', 'store_manager_version', 'cpbw_install_time', 'cpbw_consent_given');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpbw_review_dismissed', 'cpbw_promotional_notice_november_2025');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpbw_review_dismissed', 'cpbw_promotional_notice_november_2025');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpbw_review_dismissed', 'cpbw_promotional_notice_november_2025');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpbw_review_dismissed', 'cpbw_promotional_notice_november_2025');

