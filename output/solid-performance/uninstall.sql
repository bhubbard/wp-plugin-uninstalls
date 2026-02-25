-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stellarwp_telemetry', 'stellarwp_telemetry_last_send');

