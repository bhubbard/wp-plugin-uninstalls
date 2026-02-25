-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bookaroom_events_db_key', 'bookaroom_events_db_database', 'bookaroom_events_db_username', 'bookaroom_events_db_password', 'bookaroom_events_prefix', 'bookaroom_events_db_host', 'bookaroom_events_regpage_URL', 'bookaroom_db_versions');

