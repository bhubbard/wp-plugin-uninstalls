-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_upscaled_image_url', '_wp_attachment_image_alt', '_aig_user_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_upscaled_image_url', '_wp_attachment_image_alt', '_aig_user_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_upscaled_image_url', '_wp_attachment_image_alt', '_aig_user_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_upscaled_image_url', '_wp_attachment_image_alt', '_aig_user_avatar');

