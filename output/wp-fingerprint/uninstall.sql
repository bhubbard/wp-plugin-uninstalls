-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfingerprint_checkstamp', 'wpfingerprint_invalid', 'wpfingerprint_db_version', 'wpfingerprint_checksum', 'wpfingerprint_last_run', 'wp_fingerprint_option', 'wpfingerprint_fails', 'wpfingerprint_mode', 'wpfingerprint-first-run');

