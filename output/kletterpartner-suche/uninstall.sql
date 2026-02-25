-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kps_icon', 'kps_output', 'kps_translations', 'kps_adminUnlockMailSettings', 'kps_MailFrom', 'kps_userMailSettings', 'kps_userMailContactSettings', 'kps_authorMailSettings', 'kps_userSettings', 'kps_backendPagination', 'kps_deleteNoEntryTime', 'kps_deleteEntryTime', 'kps_version', 'kps_formOptions', 'kps_formWordCount', 'kps_captchakeys', 'kps_captcha', 'kps_frontendPagination', 'kps_mailFrom', 'kps_mailFromCC', 'kps_agb', 'kps_dsgvo', 'kps_report', 'kps_kpsCounter', 'kps_widget', 'kps_legend', 'kps_userMailContent', 'kps_authorMailContent', 'kps_adminUnlockMailContent');

