-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WeeklyScheduleGeneral', 'WS_PP');
DELETE FROM wp_options WHERE option_name LIKE 'WS_PP%';

