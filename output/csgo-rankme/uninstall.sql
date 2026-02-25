-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rankme_scoreboard_db_version', 'rankme_profile_db_version');

