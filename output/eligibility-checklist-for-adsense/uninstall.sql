-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecfa_settings', 'ecfa_adsense_audit_results_v8', 'ecfa_adsense_audit_timestamp');

