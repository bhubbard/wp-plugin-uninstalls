-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alt_text_pro_settings');
DELETE FROM wp_options WHERE option_name LIKE 'alt_text_pro_bulk_%';
DELETE FROM wp_options WHERE option_name LIKE 'alt_text_pro_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'alt_text_pro_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_alt_text_pro_context');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_alt_text_pro_context');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_alt_text_pro_context');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_alt_text_pro_context');

