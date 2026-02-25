-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exteacma_api_token', 'exteacma_api_username', 'exteacma_api_uuid');

