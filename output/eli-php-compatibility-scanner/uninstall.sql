-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phpcompat_checker_php_version', 'phpcompat_checker_report_mode', 'phpcompat_checker_batch_size', 'phpcompat_checker_skip_vendor', 'phpcompat_checker_stop_scan');

