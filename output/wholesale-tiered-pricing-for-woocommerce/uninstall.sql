-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whtprole_pricing_save_general_settings', 'whtprole_global_product_settings', 'whtprole_pricing_global_rules', 'whtprole_global_product_setting', 'whtprole_role_pricing_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_role_pricing_rules', '_show_pricing_table');
DELETE FROM wp_usermeta WHERE meta_key IN ('_role_pricing_rules', '_show_pricing_table');
DELETE FROM wp_termmeta WHERE meta_key IN ('_role_pricing_rules', '_show_pricing_table');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_role_pricing_rules', '_show_pricing_table');

