-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pssec_ignore_whitelist', 'pssec_ignore_blacklist', 'pssec_ignore_high_requests', 'pssec_country_whitelist', 'pssec_api_key', 'pssec_user_id', 'pssec_host', 'pssec_high_request_count', 'pssec_countries_whitelisted', 'ssec_ignore_blacklist');

