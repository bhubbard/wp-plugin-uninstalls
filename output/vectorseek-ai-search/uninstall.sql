-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vectorseek_host', 'vectorseek_context', 'vectorseek_api_key', 'vectorseek_search_class');

