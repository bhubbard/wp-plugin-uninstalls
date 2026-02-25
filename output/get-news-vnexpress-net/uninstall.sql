-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gnv_add_menu_hk', 'some_other_option', 'option_etc', 'add_menu_hk');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('link_get_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('link_get_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('link_get_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('link_get_content');

