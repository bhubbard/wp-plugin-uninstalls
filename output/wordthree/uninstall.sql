-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordthree_metamask_db_version', 'wordthree_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wordthree_menu_item_is_login_link', '_wordthree_display_login_button');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wordthree_menu_item_is_login_link', '_wordthree_display_login_button');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wordthree_menu_item_is_login_link', '_wordthree_display_login_button');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wordthree_menu_item_is_login_link', '_wordthree_display_login_button');

