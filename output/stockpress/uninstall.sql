-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stockpress_url', 'stockpress_uuid', '_wp_attachment_image_alt', 'stockpress_auth_token', 'stockpress_user_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('stockpress_url', 'stockpress_uuid', '_wp_attachment_image_alt', 'stockpress_auth_token', 'stockpress_user_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('stockpress_url', 'stockpress_uuid', '_wp_attachment_image_alt', 'stockpress_auth_token', 'stockpress_user_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stockpress_url', 'stockpress_uuid', '_wp_attachment_image_alt', 'stockpress_auth_token', 'stockpress_user_token');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'stockpress_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'stockpress_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'stockpress_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'stockpress_%';

