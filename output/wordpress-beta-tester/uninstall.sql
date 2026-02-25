-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_beta_tester', 'wp_beta_tester_core', 'wp_beta_tester_extras', 'update_core', 'current_wp_release');

