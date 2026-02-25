-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_obit_rating', '_obit_product_id', '_obit_verified_buyer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_obit_rating', '_obit_product_id', '_obit_verified_buyer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_obit_rating', '_obit_product_id', '_obit_verified_buyer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_obit_rating', '_obit_product_id', '_obit_verified_buyer');

