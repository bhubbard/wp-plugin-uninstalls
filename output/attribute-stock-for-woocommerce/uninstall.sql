-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_manage_stock', 'woocommerce_notify_no_stock_amount', 'woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock', 'woocommerce_notify_low_stock', 'woocommerce_stock_email_recipient', 'mewz_wcas_product_multipliers', 'woocommerce_hide_out_of_stock_items', 'woocommerce_stock_format', 'update_plugins', 'envato_market_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_skip_optimize_tables';
DELETE FROM wp_options WHERE option_name LIKE 'mewz_wcas_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_envato_unlisted';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mewz_wcas_multiplier', '_mewz_wcas_multiplier', '_wp_old_slug', '_sku', '_filters', '_quantity', '_product_attributes', '_mewz_wcas_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('mewz_wcas_multiplier', '_mewz_wcas_multiplier', '_wp_old_slug', '_sku', '_filters', '_quantity', '_product_attributes', '_mewz_wcas_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('mewz_wcas_multiplier', '_mewz_wcas_multiplier', '_wp_old_slug', '_sku', '_filters', '_quantity', '_product_attributes', '_mewz_wcas_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mewz_wcas_multiplier', '_mewz_wcas_multiplier', '_wp_old_slug', '_sku', '_filters', '_quantity', '_product_attributes', '_mewz_wcas_exclude');

