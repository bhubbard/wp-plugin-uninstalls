-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%increase_font_support';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_icon', '_menu_font_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_icon', '_menu_font_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_icon', '_menu_font_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_icon', '_menu_font_icon');

