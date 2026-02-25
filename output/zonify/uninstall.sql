-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zonify_api_key', 'zonify_error', 'zonify_error_message', 'zonifyapp_api_key', 'editorify_error');

