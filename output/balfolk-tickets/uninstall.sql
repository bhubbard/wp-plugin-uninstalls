-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bft_products_ids_custom_checkbox', 'bft_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('BFT Custom Product Additional Check', '_wp_page_template', 'BFT Additional Check');
DELETE FROM wp_usermeta WHERE meta_key IN ('BFT Custom Product Additional Check', '_wp_page_template', 'BFT Additional Check');
DELETE FROM wp_termmeta WHERE meta_key IN ('BFT Custom Product Additional Check', '_wp_page_template', 'BFT Additional Check');
DELETE FROM wp_commentmeta WHERE meta_key IN ('BFT Custom Product Additional Check', '_wp_page_template', 'BFT Additional Check');

