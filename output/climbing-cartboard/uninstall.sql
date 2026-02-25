-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_climbing_card_public', '_wp_page_template', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_climbing_card_public', '_wp_page_template', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_climbing_card_public', '_wp_page_template', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_climbing_card_public', '_wp_page_template', 'first_name', 'last_name');

