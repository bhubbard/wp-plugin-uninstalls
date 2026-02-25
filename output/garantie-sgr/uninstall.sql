-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('garantie_sgr_creating', 'garantie_sgr_version', 'garantie_sgr_product_id', 'garantie_sgr_pending_setup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_tax_status', '_virtual', '_manage_stock', '_enable_sgr');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_tax_status', '_virtual', '_manage_stock', '_enable_sgr');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_tax_status', '_virtual', '_manage_stock', '_enable_sgr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_tax_status', '_virtual', '_manage_stock', '_enable_sgr');

