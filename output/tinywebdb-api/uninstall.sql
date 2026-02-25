-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_tinywebdb_api_url_trigger', 'wp_tinywebdb_api_key', 'wp_tinywebdb_api_tag_type');

