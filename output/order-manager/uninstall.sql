-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ordermanager_options', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ordermanager_menu_order', '_ordermanager_post_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ordermanager_menu_order', '_ordermanager_post_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ordermanager_menu_order', '_ordermanager_post_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ordermanager_menu_order', '_ordermanager_post_order');

