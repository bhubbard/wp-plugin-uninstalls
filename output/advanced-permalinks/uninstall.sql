-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_permalinks_cache', 'advanced_permalinks_settings', 'advanced_permalinks_posts', 'advanced_permalinks_migration', 'advanced_permalinks_categories', 'advanced_permalinks_migration_rule');

