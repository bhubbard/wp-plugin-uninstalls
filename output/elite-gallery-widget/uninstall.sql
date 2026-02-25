-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'health-check-allowed-plugins');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

