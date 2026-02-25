-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eip_redirect_provider', 'eip_redirect_api2', 'eip_redirect_api3', 'eip_country', 'eip_ruletype', 'eip_redirect_url');

