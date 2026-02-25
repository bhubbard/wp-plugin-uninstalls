-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tstats_settings', 'translation_stats_activate', 'update_plugins');

