-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('okta_org_url', 'okta_client_id', 'okta_client_secret');

