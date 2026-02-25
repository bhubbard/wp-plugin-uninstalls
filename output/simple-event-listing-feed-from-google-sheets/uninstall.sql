-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_event_sheets_sheet_id', 'simple_event_sheets_sheet_name', 'simple_event_sheets_google_api_key', 'simple_event_sheets_passed_events_checkbox', 'simple_event_sheets_default_view', 'simple_event_sheets_show_view_toggle', 'simple_event_sheets_calendar_start_day', 'simple_event_sheets_max_events_per_day', 'simple_event_sheets_checkbox');

