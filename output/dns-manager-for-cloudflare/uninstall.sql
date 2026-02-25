-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dnsm4cf_api_token', 'dnsm4cf_zone_id', 'dnsm4cf_domain_name');

