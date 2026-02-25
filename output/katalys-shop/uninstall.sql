-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revoffers_site_id', 'revoffers_use_cron', 'woocommerce_weight_unit', 'revoffers_db_version', 'katalys_shop_merchant');
DELETE FROM wp_options WHERE option_name LIKE '%_taxamt';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_customer_ip_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_customer_ip_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_customer_ip_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_customer_ip_address');

