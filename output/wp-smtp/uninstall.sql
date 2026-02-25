-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solid_mail_migration_error', 'wp_smtp_options', 'stellarwp_telemetry', 'stellarwp_telemetry_last_send');

