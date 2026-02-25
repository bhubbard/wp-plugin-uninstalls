-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpssl_tests_results', 'wpfs_ssl_status', 'update_plugins');

