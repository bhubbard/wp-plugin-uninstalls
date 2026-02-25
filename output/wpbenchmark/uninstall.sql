-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-benchmark-io-settings', 'wp-benchmark-io-running', 'wp-benchmark-io-history');
DELETE FROM wp_options WHERE option_name LIKE 'benchmark_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'benchmark_transient_%';

