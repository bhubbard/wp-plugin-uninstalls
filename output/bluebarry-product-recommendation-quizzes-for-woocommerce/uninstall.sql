-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbi_tenant_id', 'bbi_enable_debug_logging', 'bbi_products_csv_enabled', 'bbi_products_csv_path');
DELETE FROM wp_options WHERE option_name LIKE 'bb_session_%';

