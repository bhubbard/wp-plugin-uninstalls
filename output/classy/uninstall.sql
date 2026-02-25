-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classy_token', 'classy_cid', 'classy_org_name', 'classy_url');

