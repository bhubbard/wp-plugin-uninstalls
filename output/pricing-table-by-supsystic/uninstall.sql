-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pts_ac_subscribe', 'pts_ac_remind', 'pts_ac_disabled', 'pts_show_love_link', 'pts_last_check_love_link', 'supsystic_pts_love_link_title');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_opts_data';
DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send';
DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats';

