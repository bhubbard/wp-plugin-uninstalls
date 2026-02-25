-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tzcustom-db-version', 'tzcustom-update-notification', 'tzcustom-curr-version', 'tzcustom_excerptlen_one', 'tzcustom_excerptlen', 'tzcustomsmethod1', 'tzcustomsmethod2', 'tzcustomsmethod3');
DELETE FROM wp_options WHERE option_name LIKE 'tzcustomsmethod%';
DELETE FROM wp_options WHERE option_name LIKE 'optset%';

