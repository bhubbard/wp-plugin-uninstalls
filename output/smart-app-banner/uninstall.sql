-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsl_global_banner', 'wsl_homepage_appid', 'wsl_homepage_appid_ipad', 'wsl_homepage_affiliate', 'wsl_homepage_argument', 'wsl_app_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wsl-app-id', '_wsl-app-id-ipad', '_wsl-affiliate-data', '_wsl-app-argument');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wsl-app-id', '_wsl-app-id-ipad', '_wsl-affiliate-data', '_wsl-app-argument');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wsl-app-id', '_wsl-app-id-ipad', '_wsl-affiliate-data', '_wsl-app-argument');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wsl-app-id', '_wsl-app-id-ipad', '_wsl-affiliate-data', '_wsl-app-argument');

