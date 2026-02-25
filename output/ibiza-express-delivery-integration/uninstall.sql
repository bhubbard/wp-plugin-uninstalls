-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ibizaxdel_api_integration_key', 'ibizaxdel_api_integration_env');

