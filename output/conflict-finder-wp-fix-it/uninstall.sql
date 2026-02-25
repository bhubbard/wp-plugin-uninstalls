-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conflict_finder_email_test_status', 'conflict_finder_plugins_temporarily_deactivated', 'conflict_finder_theme_temporarily_switched', 'conflict_finder_saved_active_theme', 'conflict_finder_saved_active_plugins');

