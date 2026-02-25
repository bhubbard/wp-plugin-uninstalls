-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_variable_defaults_v101_upgraded');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_variable_default_order', '_edd_variable_default_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_variable_default_order', '_edd_variable_default_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_variable_default_order', '_edd_variable_default_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_variable_default_order', '_edd_variable_default_price');

