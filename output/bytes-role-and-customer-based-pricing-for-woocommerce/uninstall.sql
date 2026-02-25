-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bytes_role_operation_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bytes_role_based_pricing_rules', '_bytes__customer_based_pricing_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bytes_role_based_pricing_rules', '_bytes__customer_based_pricing_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bytes_role_based_pricing_rules', '_bytes__customer_based_pricing_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bytes_role_based_pricing_rules', '_bytes__customer_based_pricing_rules');

