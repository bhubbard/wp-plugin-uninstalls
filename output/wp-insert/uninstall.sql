-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_insert_abtesting_mode', 'wp_insert_adstxt_adsense_admin_notice_dismissed', 'wp_insert_inpostads', 'wp_insert_adwidgets', 'wp_insert_inthemeads', 'wp_insert_shortcodeads', 'wp_insert_pagelevelads', 'wp_insert_version', 'wp_insert_google_api_authentication_data', 'wp_insert_legalpages', 'wp_insert_legal_options', 'wp_insert_trackingcodes', 'wp_insert_vi_code_settings', 'wp_insert_adstxt_adsense_autocheck_content', 'wp_insert_google_api_access_token', 'wp_insert_vi_api_access_token', 'wp_insert_google_api_ad_units', 'wp_insert_vi_api_settings', 'wp_insert_vi_api_authetication_token', 'wp_insert_vi_api_jstag');
DELETE FROM wp_options WHERE option_name LIKE 'wp_insert_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_insert_ip_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_insert_vi_api_is_eu_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_insert_2.3_admin_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_insert_2.3_admin_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_insert_2.3_admin_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_insert_2.3_admin_notice_dismissed');

