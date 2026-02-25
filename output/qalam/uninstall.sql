-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qalam_client_id', 'qalam_document_id_source', 'qalam_document_source_value', 'qalam_allowed_to_use');

