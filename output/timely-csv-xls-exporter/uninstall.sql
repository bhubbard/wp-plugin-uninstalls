-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fatcxe_options', 'fatcxe_next_export', 'fatcxe_last_export', 'fatcxe_version', 'fatcxe_exports_log');

