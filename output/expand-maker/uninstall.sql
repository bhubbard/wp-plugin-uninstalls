-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yrm-hide-media-buttons', 'yrm-hide-google-fonts', 'yrm_redirect', 'yrm-user-roles', 'yrm-hid-find-and-replace-menu', 'yrm-hid-accordion-menu', 'EXPM_PREV_VERSION', 'EXPM_VERSION', 'YrmUsageDays', 'YrmInstallDate', 'YrmShowNextTime', 'yrm-delete-data', 'YrmDontShowReviewNotice');
DELETE FROM wp_options WHERE option_name LIKE 'yrm-read-more-%';
DELETE FROM wp_options WHERE option_name LIKE 'yrm-license-status-%';

