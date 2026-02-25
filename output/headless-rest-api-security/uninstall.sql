-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hras_enabled', 'hras_api_key', 'hras_allowed_domain', 'hras_whitelisted_routes', 'hras_headless_redirect');

