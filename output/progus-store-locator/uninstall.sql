-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psl_refresh_token', 'psl_page_id', 'psl_id', 'psl_token', 'psl_token_expiry', 'psl_api_cache');

