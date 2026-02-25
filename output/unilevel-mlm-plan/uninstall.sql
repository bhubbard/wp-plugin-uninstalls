-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ump_general_settings', 'ump_register_page_id', 'ump_downlines_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_ump_page', 'menu_item_ump', 'ump_first_name', 'ump_last_name', 'ump_username', 'ump_address', 'ump_sponsor_id', 'ump_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_ump_page', 'menu_item_ump', 'ump_first_name', 'ump_last_name', 'ump_username', 'ump_address', 'ump_sponsor_id', 'ump_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_ump_page', 'menu_item_ump', 'ump_first_name', 'ump_last_name', 'ump_username', 'ump_address', 'ump_sponsor_id', 'ump_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_ump_page', 'menu_item_ump', 'ump_first_name', 'ump_last_name', 'ump_username', 'ump_address', 'ump_sponsor_id', 'ump_phone');

