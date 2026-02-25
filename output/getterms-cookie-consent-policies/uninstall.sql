-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getterms_token', 'getterms-manual-widget', 'getterms-auto-widget', 'getterms-show-widget', 'getterms-auto-language-detection', 'getterms-widget-slug', 'getterms-widget-language', 'getterms-default-language', 'getterms-languages', 'getterms-policies', 'getterms-token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_custom');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_custom');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_custom');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_custom');

