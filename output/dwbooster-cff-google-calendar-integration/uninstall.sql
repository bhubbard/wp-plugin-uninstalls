-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cff-google-calendar-version', 'CP_CFF_GOOGLE_CALENDAR_CLIENT_ID', 'CP_CFF_GOOGLE_CALENDAR_CLIENT_SECRET', 'CP_CFF_GOOGLE_CALENDAR_ACCESS_TOKEN', 'CP_CFF_GOOGLE_CALENDAR_REFRESH_TOKEN', 'cff_google_oauth_state');

