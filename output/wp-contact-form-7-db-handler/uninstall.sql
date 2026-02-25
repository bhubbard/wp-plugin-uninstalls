-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ys_cfdbh_columns_names', 'show_form_columns');
DELETE FROM wp_usermeta WHERE meta_key IN ('ys_cfdbh_columns_names', 'show_form_columns');
DELETE FROM wp_termmeta WHERE meta_key IN ('ys_cfdbh_columns_names', 'show_form_columns');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ys_cfdbh_columns_names', 'show_form_columns');

