-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcc_pst_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcc_pst_sale_price_start_time', '_wcc_pst_sale_price_end_time', '_wcc_pst_sale_start_datetime', '_wcc_pst_sale_end_datetime', 'wcc_pst_sale_start_datetime', 'wcc_pst_sale_end_datetime', '_sale_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcc_pst_sale_price_start_time', '_wcc_pst_sale_price_end_time', '_wcc_pst_sale_start_datetime', '_wcc_pst_sale_end_datetime', 'wcc_pst_sale_start_datetime', 'wcc_pst_sale_end_datetime', '_sale_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcc_pst_sale_price_start_time', '_wcc_pst_sale_price_end_time', '_wcc_pst_sale_start_datetime', '_wcc_pst_sale_end_datetime', 'wcc_pst_sale_start_datetime', 'wcc_pst_sale_end_datetime', '_sale_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcc_pst_sale_price_start_time', '_wcc_pst_sale_price_end_time', '_wcc_pst_sale_start_datetime', '_wcc_pst_sale_end_datetime', 'wcc_pst_sale_start_datetime', 'wcc_pst_sale_end_datetime', '_sale_price', '_regular_price');

