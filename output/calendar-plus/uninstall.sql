-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calendar_today_widget_title', 'calendar_upcoming_widget_title');

