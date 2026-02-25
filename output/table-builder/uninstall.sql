-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icdb_table_shortcode', 'icdb_column_property', 'icdb_header_style', 'icdb_content_length', 'icdb_excerpt_length', 'icdb_table_seq');

