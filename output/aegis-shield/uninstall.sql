-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aegis_shield_failed_logins', 'aegis_shield_cron_enabled', 'aegis_shield_cron_frequency', 'aegis_shield_last_cron_scan', 'aegis_shield_license_key');

