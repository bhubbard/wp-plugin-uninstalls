-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dp_import_url', 'dp_import_verification_key', 'dp_import_cron_frequency', '_transient_timeout_dp_import_updating', 'dp_import_verified', 'dp_import_errors', 'dp_import_notice', 'dp_import_updating');

