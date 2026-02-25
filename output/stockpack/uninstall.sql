-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('terms_accepted_adobe_stock', 'terms_accepted_getty', 'terms_accepted_istock', 'terms_accepted_pixabay', 'terms_accepted_pexels', 'terms_accepted_unsplash', 'terms_accepted_deposit_photos');
DELETE FROM wp_options WHERE option_name LIKE 'terms_accepted_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('stockpack_caption_generate', 'stockpack_author_name', 'stockpack_author_url', 'stockpack_provider', 'stockpack_image_url', 'stockpack_license', 'stockpack_license_url', 'stockpack_modification', 'stockpack_extra', 'stockpack_id', '_wp_attachment_image_alt', 'stockpack_media_id', 'stockpack_download_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('stockpack_caption_generate', 'stockpack_author_name', 'stockpack_author_url', 'stockpack_provider', 'stockpack_image_url', 'stockpack_license', 'stockpack_license_url', 'stockpack_modification', 'stockpack_extra', 'stockpack_id', '_wp_attachment_image_alt', 'stockpack_media_id', 'stockpack_download_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('stockpack_caption_generate', 'stockpack_author_name', 'stockpack_author_url', 'stockpack_provider', 'stockpack_image_url', 'stockpack_license', 'stockpack_license_url', 'stockpack_modification', 'stockpack_extra', 'stockpack_id', '_wp_attachment_image_alt', 'stockpack_media_id', 'stockpack_download_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('stockpack_caption_generate', 'stockpack_author_name', 'stockpack_author_url', 'stockpack_provider', 'stockpack_image_url', 'stockpack_license', 'stockpack_license_url', 'stockpack_modification', 'stockpack_extra', 'stockpack_id', '_wp_attachment_image_alt', 'stockpack_media_id', 'stockpack_download_timestamp');

