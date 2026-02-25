-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rate_limiting_enabled', 'rate_limiting_seconds', 'rate_limiting_limit', 'rate_limiting_proxy_support');

