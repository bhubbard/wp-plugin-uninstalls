-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('szamlahegy_wc_api_key', 'szamlahegy_wc_default_productnr', 'szamlahegy_wc_test', 'szamlahegy_wc_invoice_type', 'szamlahegy_wc_server_url', 'szamlahegy_wc_generate_auto');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_szamlahegy_wc_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('_szamlahegy_wc_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('_szamlahegy_wc_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_szamlahegy_wc_response');

