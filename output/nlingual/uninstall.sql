-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nlingual_upgraded', 'nLingual-options', 'nlingual_options', 'nlingual_languages', 'nlingual_database_version', 'nlingual_upgraded_tables', 'nlingual_upgraded_options', 'nLingual-sync_rules', 'active_sitewide_plugins', 'settings_errors');

