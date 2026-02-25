-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpdp_settings', 'dpdp_policy_text', 'dpdp_total_consents');

