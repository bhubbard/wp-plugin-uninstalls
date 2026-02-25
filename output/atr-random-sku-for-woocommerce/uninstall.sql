-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atr_select_sku_format', 'atr_prefix_sku', 'atr_incremental_sku_start', 'atr_force_sku_on_empty', 'atr_sku_length', 'atr_characters_for_SKU', 'atr_min_number_for_number', 'atr_max_number_for_number', 'atr_incremental_sku_min_num_digits');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

