-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wuco_database_cleanup_done', 'wuco_version');
DELETE FROM wp_options WHERE option_name LIKE '%_schedule_types';

