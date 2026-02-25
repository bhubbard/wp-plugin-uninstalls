-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nmr_strava_settings', 'nmr_strava_activities_db_version');

