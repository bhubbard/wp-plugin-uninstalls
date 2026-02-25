-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bh_site_migration_country_code', 'bh_site_migration_geo_data', 'bh_site_migration_region_urls', 'bh_site_migration_id', 'bh_site_migration_token', 'wp_module_tasks_schedules', 'update_plugins', 'update_themes', 'bluehost_site_migrator_can_migrate');

