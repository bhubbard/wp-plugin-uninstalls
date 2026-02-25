-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polarsteps_username', 'polarsteps_trip_id', 'polarsteps_user_id', 'polarsteps_db_version', 'polarsteps_trip_slug', 'polarsteps_trip_legacy_id');

