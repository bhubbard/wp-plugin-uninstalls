-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmagazine_modules_lite_activated_time', 'wpmagazine_modules_lite_upgrade_premium', 'wpmagazine_modules_lite_category_options', 'wpmagazine-modules-lite-admin-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmagazine_modules_lite_ignore_review_notice_partially', 'wpmagazine_modules_lite_ignore_theme_review_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmagazine_modules_lite_ignore_review_notice_partially', 'wpmagazine_modules_lite_ignore_theme_review_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmagazine_modules_lite_ignore_review_notice_partially', 'wpmagazine_modules_lite_ignore_theme_review_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmagazine_modules_lite_ignore_review_notice_partially', 'wpmagazine_modules_lite_ignore_theme_review_notice');

