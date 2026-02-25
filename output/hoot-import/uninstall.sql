-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hootimport_admin_footer', 'hootimport_wc_flush', 'hootkit-activemods', 'newsletter_show_welcome', 'sidebars_widgets', 'hootimport_freshpack', '_mappress_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'hootimport_idsmap_%';
DELETE FROM wp_options WHERE option_name LIKE 'hootimport_idsmap_wc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hootimport', '_hootkitimport', '_hash', '_wp_attachment_is_custom_header', '_menu-item-hybridextend_megamenu', '_menu-item-hoot_megamenu', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hootimport', '_hootkitimport', '_hash', '_wp_attachment_is_custom_header', '_menu-item-hybridextend_megamenu', '_menu-item-hoot_megamenu', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hootimport', '_hootkitimport', '_hash', '_wp_attachment_is_custom_header', '_menu-item-hybridextend_megamenu', '_menu-item-hoot_megamenu', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hootimport', '_hootkitimport', '_hash', '_wp_attachment_is_custom_header', '_menu-item-hybridextend_megamenu', '_menu-item-hoot_megamenu', '_menu_item_menu_item_parent', '_thumbnail_id');

