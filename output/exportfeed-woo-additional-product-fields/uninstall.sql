-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wapf_brand', '_wapf_mpn', '_wapf_upc', '_wapf_ean', '_wapf_shipping_cost', '_wapf_notes', '_wapf_valid', '_wapf_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wapf_brand', '_wapf_mpn', '_wapf_upc', '_wapf_ean', '_wapf_shipping_cost', '_wapf_notes', '_wapf_valid', '_wapf_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wapf_brand', '_wapf_mpn', '_wapf_upc', '_wapf_ean', '_wapf_shipping_cost', '_wapf_notes', '_wapf_valid', '_wapf_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wapf_brand', '_wapf_mpn', '_wapf_upc', '_wapf_ean', '_wapf_shipping_cost', '_wapf_notes', '_wapf_valid', '_wapf_description');

