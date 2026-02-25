-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dvla_search_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'dvla_search_fields_show_%';

