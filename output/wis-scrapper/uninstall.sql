-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wis_scrapper_pack_passcount', 'wis_scrapper_add1_passcount', 'wis_scrapper_add1_clicked', 'wis_scrapper_options', 'wis_backup_version_plugin', 'wis_backup_package_active', 'wis_backup_settings');

