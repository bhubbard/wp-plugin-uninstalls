-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmeetupactivity_groups', 'wpmeetupactivity_prefs', 'wpmeetupactivity_fb_options', 'wpmeetupactivity_events_title', 'wpmeetupactivity_events_desc', 'wpmeetupactivity_apikey', 'wpmeetupactivity_db_version', 'wpmeetupactivity_title');

