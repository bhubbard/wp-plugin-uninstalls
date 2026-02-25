-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jekyll_export_start_time', '_hidden_option', 'visible_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('serialized_field', 'custom_field', 'empty_string', 'false_value', 'zero_value', 'null_value', 'non_empty_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('serialized_field', 'custom_field', 'empty_string', 'false_value', 'zero_value', 'null_value', 'non_empty_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('serialized_field', 'custom_field', 'empty_string', 'false_value', 'zero_value', 'null_value', 'non_empty_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('serialized_field', 'custom_field', 'empty_string', 'false_value', 'zero_value', 'null_value', 'non_empty_value');

