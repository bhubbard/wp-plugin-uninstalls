-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webequipe_pdf_search_settings', 'webequipe_pdf_search_version', 'webequipe_pdf_search_error_count', 'webequipe_pdf_search_logs');
DELETE FROM wp_options WHERE option_name LIKE 'webequipe_pdf_bulk_action_message_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webequipe_pdf_search_excluded', '_webequipe_pdf_index_error', '_webequipe_pdf_indexing_status', '_webequipe_pdf_extracted_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webequipe_pdf_search_excluded', '_webequipe_pdf_index_error', '_webequipe_pdf_indexing_status', '_webequipe_pdf_extracted_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webequipe_pdf_search_excluded', '_webequipe_pdf_index_error', '_webequipe_pdf_indexing_status', '_webequipe_pdf_extracted_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webequipe_pdf_search_excluded', '_webequipe_pdf_index_error', '_webequipe_pdf_indexing_status', '_webequipe_pdf_extracted_text');

