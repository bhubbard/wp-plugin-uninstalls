-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arts_gallery_flush_rewrite_rules', 'arts_gallery_settings', 'arts_gallery_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ag_inquiry_count', '_ag_last_inquiry', '_ag_room_settings', '_wp_attachment_image_alt', '_ag_artwork_size', '_ag_custom_width', '_ag_custom_height', '_ag_artwork_scale');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ag_inquiry_count', '_ag_last_inquiry', '_ag_room_settings', '_wp_attachment_image_alt', '_ag_artwork_size', '_ag_custom_width', '_ag_custom_height', '_ag_artwork_scale');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ag_inquiry_count', '_ag_last_inquiry', '_ag_room_settings', '_wp_attachment_image_alt', '_ag_artwork_size', '_ag_custom_width', '_ag_custom_height', '_ag_artwork_scale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ag_inquiry_count', '_ag_last_inquiry', '_ag_room_settings', '_wp_attachment_image_alt', '_ag_artwork_size', '_ag_custom_width', '_ag_custom_height', '_ag_artwork_scale');

