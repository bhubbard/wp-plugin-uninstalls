-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_civi_host', 'cf7_civi_path', 'cf7_civi_site_key', 'cf7_civi_api_key');

