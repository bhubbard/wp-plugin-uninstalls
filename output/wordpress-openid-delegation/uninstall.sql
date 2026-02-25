-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openid_delegation_url', 'openid_delegation_provider', 'openid_delegation_xrds_location');

