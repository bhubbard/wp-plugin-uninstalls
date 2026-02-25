-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%minor_version';
DELETE FROM wp_options WHERE option_name LIKE '%bUninstallOnDeactivate';
DELETE FROM wp_options WHERE option_name LIKE '%iDebugLevel';

