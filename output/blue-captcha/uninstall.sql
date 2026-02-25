-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blcap_settings', 'blcap_protection_key', 'blcap_version', 'blcap_ip_informer_url', 'blcap_date', 'blcap_sessions');

