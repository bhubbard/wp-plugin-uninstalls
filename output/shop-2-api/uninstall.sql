-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shop2api_token', 'shop2api_connection_succeeded', 'shop2api_bol_connection_succeeded', 'shop2api_wc_connection_succeeded', 'woocommerce_category_field', 'shop2api_email', 'ean-number', 'shop2api_sync_to_bol');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shop2api_sync_to_bol', 'shop2api_koopblok_service', 'shop2api_ean_number', 'shop2api_combi_ean_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('shop2api_sync_to_bol', 'shop2api_koopblok_service', 'shop2api_ean_number', 'shop2api_combi_ean_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('shop2api_sync_to_bol', 'shop2api_koopblok_service', 'shop2api_ean_number', 'shop2api_combi_ean_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shop2api_sync_to_bol', 'shop2api_koopblok_service', 'shop2api_ean_number', 'shop2api_combi_ean_number');

