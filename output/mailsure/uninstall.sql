-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailsure_do_activation_redirect', 'mailsure_latest_test_result', 'mailsure_initiated_on_demand_test', 'mailsure_new_data_flag');

