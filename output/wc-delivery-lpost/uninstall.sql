-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpost_wc_api_test', 'lpost_wc_logging', 'lpost_wc_api_secret', 'lpost_wc_api_token', 'lpost_wc_api_token_date', 'lpost_wc_api_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lp_shipment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lp_shipment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lp_shipment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lp_shipment_id');

