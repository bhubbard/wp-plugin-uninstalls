-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caldav2ics_calendar_urls', 'caldav2ics_calendar_users', 'caldav2ics_calendar_passwords', 'caldav2ics_calendar_files', 'caldav2ics_calendar_excludes', 'caldav2ics_upgrade', 'caldav2ics');

