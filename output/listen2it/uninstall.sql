-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('l2it_org_id', 'l2it_integration_id', 'l2it_api_key', 'l2it_has_paywall');

