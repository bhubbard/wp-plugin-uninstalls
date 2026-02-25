-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bf3infobox_settings');
DELETE FROM wp_options WHERE option_name LIKE 'bf3_stats_playerdata_%';

