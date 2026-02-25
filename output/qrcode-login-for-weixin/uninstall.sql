-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wx_appid', 'wx_secret', 'wx_token', 'qrcode_access_token');
DELETE FROM wp_options WHERE option_name LIKE 'code_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wx_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('wx_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('wx_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wx_info');

