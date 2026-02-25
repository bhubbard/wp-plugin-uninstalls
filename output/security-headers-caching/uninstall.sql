-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shc_enable_headers', 'shc_cache_duration', 'shc_csp_policy', 'shc_enable_hsts', 'shc_enable_xss_protection', 'shc_enable_frame_options', 'shc_enable_content_type', 'shc_referrer_policy', 'shc_permissions_policy');

