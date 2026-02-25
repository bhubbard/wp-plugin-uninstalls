-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snordiansh5pcontenttyperepositorymanager_defaults_set', 'snordiansh5pcontenttyperepositorymanager_option');

