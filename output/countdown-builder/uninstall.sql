-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ycd_redirect', 'ycd-user-roles', 'ycd-delete-data', 'ycd-hide-coming-soon-menu', 'ycd-print-scripts-to-page', 'ycd-hide-editor-media-button', 'ycd-disable-google-fonts', 'YcdShowNextTime', 'YcdUsageDays', 'YcdDontShowReviewNotice', 'YcdInserted', 'ycdComingSoonSettings', 'woocommerce_cart_expires', 'YcdInstallDate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ycd_enable', 'ycd_options', 'ycd-display-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('ycd_enable', 'ycd_options', 'ycd-display-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('ycd_enable', 'ycd_options', 'ycd-display-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ycd_enable', 'ycd_options', 'ycd-display-settings');

