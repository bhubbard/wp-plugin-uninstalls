-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affwp_erl_version', 'affiliatewp_external_referral_links', 'affwp_version');

