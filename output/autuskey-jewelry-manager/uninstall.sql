-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autuskey_jlm_metal_types', 'autuskey_jlm_purity_options', 'autuskey_jlm_making_charge_type', 'autuskey_jlm_making_charge_value', 'autuskey_jlm_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_jewelry_product', '_jewelry_making_charge_value', '_jewelry_making_charge_type', '_jewelry_metal_type', '_jewelry_purity', '_jewelry_gross_weight', '_jewelry_stone_weight', '_jewelry_net_weight', '_jewelry_has_stone', '_jewelry_stone_type', '_jewelry_is_certified', '_jewelry_certificate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_jewelry_product', '_jewelry_making_charge_value', '_jewelry_making_charge_type', '_jewelry_metal_type', '_jewelry_purity', '_jewelry_gross_weight', '_jewelry_stone_weight', '_jewelry_net_weight', '_jewelry_has_stone', '_jewelry_stone_type', '_jewelry_is_certified', '_jewelry_certificate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_jewelry_product', '_jewelry_making_charge_value', '_jewelry_making_charge_type', '_jewelry_metal_type', '_jewelry_purity', '_jewelry_gross_weight', '_jewelry_stone_weight', '_jewelry_net_weight', '_jewelry_has_stone', '_jewelry_stone_type', '_jewelry_is_certified', '_jewelry_certificate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_jewelry_product', '_jewelry_making_charge_value', '_jewelry_making_charge_type', '_jewelry_metal_type', '_jewelry_purity', '_jewelry_gross_weight', '_jewelry_stone_weight', '_jewelry_net_weight', '_jewelry_has_stone', '_jewelry_stone_type', '_jewelry_is_certified', '_jewelry_certificate');

