-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mushraider_api_key', 'mushraider_roles_mapping', 'mushraider_api_url', 'mushraider_css');

