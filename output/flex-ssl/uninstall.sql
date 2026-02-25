-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flex_ssl_enabled', 'flex_ssl_force_https', 'flex_ssl_update_urls', 'flex_ssl_mixed_content_fixer', 'flex_ssl_hsts', 'flex_ssl_security_headers', 'flex_ssl_ssl_status', 'flex_ssl_redirect_type', 'flex_ssl_flex_ssl_woo_safe_mode', 'flex_ssl_logs');

