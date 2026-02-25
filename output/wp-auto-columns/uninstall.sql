-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_auto_columns_split_style', 'wp_auto_columns_line_height', 'wp_auto_columns_tags_headers', 'wp_auto_columns_tags_splittable', 'wp_auto_columns_height_modifiers');

