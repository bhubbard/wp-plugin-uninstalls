-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpephpcompat_is_wptide', 'wpephpcompat.test_version', 'wpephpcompat.only_active', 'wpephpcompat.scan_results', 'wpephpcompat.lock', 'wpephpcompat.status', 'wpephpcompat.numdirs', 'wpephpcompat.show_notice', 'update_plugins');

