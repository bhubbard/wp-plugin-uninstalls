-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scott_database', 'scott_values', 'widget_scott_timer', 'scott_timer_version', 'afdn_countdowntracker', 'afdn_countdownOptions');

