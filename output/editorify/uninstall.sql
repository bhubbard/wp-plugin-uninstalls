-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('editorify_api_key', 'editorify_error', 'editorify_error_message', 'editorify_check');

