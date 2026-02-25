-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flywp_migrate_temp_dir', 'flywp_migration_key', 'flywp_initial_resume_interval');

