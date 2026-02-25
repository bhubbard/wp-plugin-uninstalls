-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calcslive_api_key', 'calcslive_default_width', 'calcslive_default_height', 'calcslive_domain');

