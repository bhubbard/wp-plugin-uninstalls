-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aitoa_gemini_api_key', 'aitoa_default_try_on_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aitoa_enable_try_on', '_aitoa_try_on_type', '_aitoa_tryable_images', '_wp_attachment_image_alt', 'aitoa_profile_photo_id', 'vtoa_profile_photo_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aitoa_enable_try_on', '_aitoa_try_on_type', '_aitoa_tryable_images', '_wp_attachment_image_alt', 'aitoa_profile_photo_id', 'vtoa_profile_photo_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aitoa_enable_try_on', '_aitoa_try_on_type', '_aitoa_tryable_images', '_wp_attachment_image_alt', 'aitoa_profile_photo_id', 'vtoa_profile_photo_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aitoa_enable_try_on', '_aitoa_try_on_type', '_aitoa_tryable_images', '_wp_attachment_image_alt', 'aitoa_profile_photo_id', 'vtoa_profile_photo_id');

