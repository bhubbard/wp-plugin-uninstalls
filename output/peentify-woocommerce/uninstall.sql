-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('peentify_status', 'peentify_api_key', 'peentify_api_secret', 'peentify_main_url');

