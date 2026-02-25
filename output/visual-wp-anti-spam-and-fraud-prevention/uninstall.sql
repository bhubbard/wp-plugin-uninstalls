-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vwpfp_fraud_prevention_threshold', 'vwpfp_max_transactions');

