-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ypm-hide-media-button', 'ypm_redirect', 'YcfPopupFormDraft', 'YpmShowNextTime', 'YpmUsageDays', 'YpmDontShowReviewNotice', 'YpmFeatureSuggestion', 'ypm-hide-modules-menu', 'YpmInstallDate');
DELETE FROM wp_options WHERE option_name LIKE 'YpmPopupCount%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ypm-metabox-popup', 'ypm-data', '_elementor_data', 'ypm-display-settings', 'ypm-conditions-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('ypm-metabox-popup', 'ypm-data', '_elementor_data', 'ypm-display-settings', 'ypm-conditions-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('ypm-metabox-popup', 'ypm-data', '_elementor_data', 'ypm-display-settings', 'ypm-conditions-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ypm-metabox-popup', 'ypm-data', '_elementor_data', 'ypm-display-settings', 'ypm-conditions-settings');

