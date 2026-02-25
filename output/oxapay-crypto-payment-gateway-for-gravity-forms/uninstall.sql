-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_oxapay_version', 'gf_oxapay_merchant', 'gf_oxapay_lifetime', 'gf_oxapay_site_name', 'gf_oxapay_auth_token', 'recently_activated');

