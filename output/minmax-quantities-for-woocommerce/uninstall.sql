-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quantity_global_args');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quantity_var_args', 'quantity_args');
DELETE FROM wp_usermeta WHERE meta_key IN ('quantity_var_args', 'quantity_args');
DELETE FROM wp_termmeta WHERE meta_key IN ('quantity_var_args', 'quantity_args');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quantity_var_args', 'quantity_args');

