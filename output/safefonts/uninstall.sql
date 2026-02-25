-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chrmrtns_safefonts_max_file_size', 'chrmrtns_safefonts_allowed_types', 'chrmrtns_safefonts_preload_fonts', 'chrmrtns_safefonts_delete_data_on_uninstall', 'chrmrtns_safefonts_version', 'safefonts_version', 'chrmrtns_safefonts_migration_notice', 'chrmrtns_safefonts_family_folders_migrated_count', 'chrmrtns_safefonts_directory_error');
DELETE FROM wp_options WHERE option_name LIKE 'safefonts_fonts_list_v%';

