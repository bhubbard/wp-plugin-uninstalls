-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgc_fullcalendar_theme', 'pgc_selected_calendar_ids', 'pgc_fullcalendar_version', 'pgc_cache_time', 'pgc_access_token', 'pgc_api_key', 'pgc_show_private_events', 'pgc_private_events_title', 'pgc_public_calendarlist', 'pgc_refresh_token', 'pgc_calendarlist', 'pgc_colorlist', 'pgc_client_secret');
DELETE FROM wp_options WHERE option_name LIKE 'pgc_notices_%';

