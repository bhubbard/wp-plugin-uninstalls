-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcpto_options', 'order_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_order_type_snv_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_order_type_snv_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_order_type_snv_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_order_type_snv_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_order_type_dsnv_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_order_type_dsnv_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_order_type_dsnv_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_order_type_dsnv_%';

