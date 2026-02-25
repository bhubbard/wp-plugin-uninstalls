-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc1c_guid_attributes', 'wc1c_order_attributes', 'wc1c_timestamp_attributes', 'wc1c_currency', 'woocommerce_currency', 'woocommerce_currency_pos', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc1c_guid', '_stock_status', 'wc1c_guid', 'wc1c_timestamp', '_visibility', '_wc1c_timestamp', '_product_attributes', 'wc1c_contragent', 'wc1c_querying', 'wc1c_queried');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc1c_guid', '_stock_status', 'wc1c_guid', 'wc1c_timestamp', '_visibility', '_wc1c_timestamp', '_product_attributes', 'wc1c_contragent', 'wc1c_querying', 'wc1c_queried');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc1c_guid', '_stock_status', 'wc1c_guid', 'wc1c_timestamp', '_visibility', '_wc1c_timestamp', '_product_attributes', 'wc1c_contragent', 'wc1c_querying', 'wc1c_queried');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc1c_guid', '_stock_status', 'wc1c_guid', 'wc1c_timestamp', '_visibility', '_wc1c_timestamp', '_product_attributes', 'wc1c_contragent', 'wc1c_querying', 'wc1c_queried');

