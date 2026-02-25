-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postmenu_options', 'postmenu_version', 'nav_menu_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lp_nav_menu_roles', '_dp_original', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lp_nav_menu_roles', '_dp_original', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lp_nav_menu_roles', '_dp_original', '_wp_page_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lp_nav_menu_roles', '_dp_original', '_wp_page_template', '_wp_attachment_image_alt');

