-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('security_headers_hsts_time', 'security_headers_hsts_subdomains', 'security_headers_hsts_preload', 'security_headers_nosniff', 'security_headers_xss', 'security_headers_frame', 'security_headers_hpkp_key1', 'security_headers_hpkp_key2', 'security_headers_hpkp_key3', 'security_headers_hpkp_time', 'security_headers_hpkp_subdomains', 'security_headers_hpkp_uri', 'security_headers_referrer', 'security_headers_ect_time', 'security_headers_ect_enforce', 'security_headers_ect_uri');

