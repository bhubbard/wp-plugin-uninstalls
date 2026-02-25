-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xml_gallery_table_name', 'xml_gallery_db_version', 'xml_gallery_qtd');

