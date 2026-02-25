-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('share_on_pixelfed_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_share_on_pixelfed_url', '_share_on_pixelfed_error', '_wp_attachment_image_alt', '_share_on_pixelfed', '_share_on_pixelfed_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_share_on_pixelfed_url', '_share_on_pixelfed_error', '_wp_attachment_image_alt', '_share_on_pixelfed', '_share_on_pixelfed_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_share_on_pixelfed_url', '_share_on_pixelfed_error', '_wp_attachment_image_alt', '_share_on_pixelfed', '_share_on_pixelfed_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_share_on_pixelfed_url', '_share_on_pixelfed_error', '_wp_attachment_image_alt', '_share_on_pixelfed', '_share_on_pixelfed_status');

