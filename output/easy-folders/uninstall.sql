-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyfolders_updated_from_wpmlf', 'easyfolders_updated_from_enhanced', 'easyfolders_updated_from_wpmf', 'easyfolders_updated_from_happyfiles', 'easyfolders_updated_from_realmedia', 'easyfolders_updated_from_filebird', 'easyfolders_updated_from_wicked_folders', 'easyfolders_updated_from_premio_folders', 'efs-query-params-attachment', 'easyfolders_sort_folder', 'easyfolders_version', 'easy-folders-install-hide', 'efs_per_user_media', 'easy-folders-activation-redirect', 'upload-ids');
DELETE FROM wp_options WHERE option_name LIKE '%install-hide';
DELETE FROM wp_options WHERE option_name LIKE 'new_term_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'efs-query-params-%';
DELETE FROM wp_options WHERE option_name LIKE '%custom-post-types';
DELETE FROM wp_options WHERE option_name LIKE '%last_run';
DELETE FROM wp_options WHERE option_name LIKE '%rating-hide';
DELETE FROM wp_options WHERE option_name LIKE '%woocommerce-sync-hide';
DELETE FROM wp_options WHERE option_name LIKE '%installation-steps';
DELETE FROM wp_options WHERE option_name LIKE '%newsletter-hide';
DELETE FROM wp_options WHERE option_name LIKE '%newsletter-id';
DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-hide';
DELETE FROM wp_options WHERE option_name LIKE '%upgrade-hellobar-hide';
DELETE FROM wp_options WHERE option_name LIKE '%joy-ride-alert-hide';
DELETE FROM wp_options WHERE option_name LIKE '%rating';
DELETE FROM wp_options WHERE option_name LIKE '%-count';
DELETE FROM wp_options WHERE option_name LIKE '%account-connect-notice';
DELETE FROM wp_options WHERE option_name LIKE '%activating_user';
DELETE FROM wp_options WHERE option_name LIKE '%activation-country-code';
DELETE FROM wp_options WHERE option_name LIKE '%feedback-id';
DELETE FROM wp_options WHERE option_name LIKE '%rating-id';
DELETE FROM wp_options WHERE option_name LIKE '%joy-ride-tour-completed';
DELETE FROM wp_options WHERE option_name LIKE '%account-activation-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%account-deactivation-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%account-uninstall-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-disable-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%subscription-upgrade-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%subscription-downgrade-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%account-connection-timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%site_status';
DELETE FROM wp_options WHERE option_name LIKE '%license_key';
DELETE FROM wp_options WHERE option_name LIKE '%usage_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%initial-trial-upgrade-notice';
DELETE FROM wp_options WHERE option_name LIKE '%free-to-pro-plugin-conversion-notice';
DELETE FROM wp_options WHERE option_name LIKE '%conflict-notice';
DELETE FROM wp_options WHERE option_name LIKE '%conflict_check';
DELETE FROM wp_options WHERE option_name LIKE '%upgrade-to-pro-notice';
DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-notice-hide';
DELETE FROM wp_options WHERE option_name LIKE '%rate-notice-hide';
DELETE FROM wp_options WHERE option_name LIKE '%rate-notice-already-done';
DELETE FROM wp_options WHERE option_name LIKE '%rating-hide-count';
DELETE FROM wp_options WHERE option_name LIKE '%upgrade-hellobar-hide-count';
DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-hide-count';
DELETE FROM wp_options WHERE option_name LIKE '%media-library-pro-alert-hide';
DELETE FROM wp_options WHERE option_name LIKE '%conflict_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%starred';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%starred';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%starred';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%starred';

