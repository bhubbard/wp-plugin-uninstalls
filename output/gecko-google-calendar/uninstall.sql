-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gecko_calendar_gcal_refresh_token', 'gecko_calendar_gcal_access_token', 'gecko_calendar_gcal_active_calendars', 'gecko_calendar_gcal_active_calendars_details', 'gecko_google_calendar_ping_last_run', 'gecko_calendar_gcal_all_calendars', 'gecko_google_calendar_settings_oauth', 'gecko_google_calendar_settings_debug', 'gecko_calendar_gcal_config_location', 'gecko_google_calendar_upcoming_events', 'gecko_google_calendar_all_upcoming_events');

