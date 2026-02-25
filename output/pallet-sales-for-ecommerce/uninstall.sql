-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pallsafo_migration_done', 'pallsafo_default_currency_symbol', 'pallsafo_calculator_enabled', 'pallsafo_weight_calculation_enabled', 'pallsafo_display_stones_count');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pallsafo_sold_by_pallet', '_pallsafo_pallet_area', '_pallsafo_pallet_price', '_pallsafo_stone_weight', '_pallsafo_stones_per_sqm');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pallsafo_sold_by_pallet', '_pallsafo_pallet_area', '_pallsafo_pallet_price', '_pallsafo_stone_weight', '_pallsafo_stones_per_sqm');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pallsafo_sold_by_pallet', '_pallsafo_pallet_area', '_pallsafo_pallet_price', '_pallsafo_stone_weight', '_pallsafo_stones_per_sqm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pallsafo_sold_by_pallet', '_pallsafo_pallet_area', '_pallsafo_pallet_price', '_pallsafo_stone_weight', '_pallsafo_stones_per_sqm');

