-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fd_calendar_shift_start_date', 'fd_calendar_shifts', 'fd_calendar_schedule_pattern', 'fd_calendar_shift_rotation', 'fd_calendar_shift_schedule');

