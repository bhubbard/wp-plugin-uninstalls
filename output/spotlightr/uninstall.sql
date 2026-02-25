-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spotlightr_api_key', 'spotlightr_subdomain', 'spotlightr_token', 'spotlightr_username');

