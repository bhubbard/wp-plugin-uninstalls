-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elegance_menu_currency', 'elegance_menu_placeholder_image', 'elegance_menu_char_limit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elegance_shortcode', 'elegance_menu', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('elegance_shortcode', 'elegance_menu', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('elegance_shortcode', 'elegance_menu', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elegance_shortcode', 'elegance_menu', '_wp_attachment_image_alt');

