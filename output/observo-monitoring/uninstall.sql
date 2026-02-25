-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('observo_sysinfo_code', 'observo-monitoring-admin-notice-install');

