-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('luipl_anonymize_ip', 'luipl_location_api_key', 'luipl_transient_ttl');

