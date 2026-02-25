-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('health-check-beta-features', 'health-check-disable-plugin-hash', 'health-check-default-theme', 'health-check-allowed-plugins', 'health-check-current-theme', 'health-check-dashboard-notices', 'health-check-backup-plugin-list', 'update_plugins', 'update_themes', 'health-check-site-status-result', 'health-check-checksums');
DELETE FROM wp_options WHERE option_name LIKE 'php_check_%';

