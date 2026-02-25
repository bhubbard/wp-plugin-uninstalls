-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_metis_api_key', 'wp_metis_pixel_auto_add_pages', 'wp_metis_pixel_auto_add_posts', 'classic-editor-replace', 'metis_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_metis_text_type', '_metis_text_length', 'managevg-wort-metis_page_metis-messagescolumnshidden', 'managevg-wort-metis_page_metis-pixelcolumnshidden', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_metis_text_type', '_metis_text_length', 'managevg-wort-metis_page_metis-messagescolumnshidden', 'managevg-wort-metis_page_metis-pixelcolumnshidden', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_metis_text_type', '_metis_text_length', 'managevg-wort-metis_page_metis-messagescolumnshidden', 'managevg-wort-metis_page_metis-pixelcolumnshidden', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_metis_text_type', '_metis_text_length', 'managevg-wort-metis_page_metis-messagescolumnshidden', 'managevg-wort-metis_page_metis-pixelcolumnshidden', 'first_name', 'last_name');

