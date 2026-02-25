-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_auto_sku_generator_category_prefixes', 'smart_auto_sku_generator_sku_length', 'smart_auto_sku_generator_overwrite_existing', 'smart_auto_sku_generator_auto_bulk_generation', 'smart_auto_sku_generator_use_dynamic_prefix', 'smart_auto_sku_generator_enable_logging', 'smart_auto_sku_generator_bulk_job', 'smart_auto_sku_generator_last_cleanup', 'smart_auto_sku_generator_preserve_skus_on_uninstall', 'smart_auto_sku_generator_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE 'smart_auto_sku_generator_backup_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_smarausk_force_overwritten');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_smarausk_force_overwritten');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_smarausk_force_overwritten');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_smarausk_force_overwritten');

