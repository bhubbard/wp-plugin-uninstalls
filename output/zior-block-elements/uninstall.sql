-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient_timeout_tests_as_array', '_transient_timeout_tests_as_zero');

