-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmp_plug_was_used', 'gmp_def_icons_installed', 'gmp_db_version', 'gmp_marker_groups_opts', 'gmp_ac_subscribe', 'gmp_ac_remind', 'gmp_ac_disabled', 'supsystic_gmp_love_link_title', 'gmp_show_love_link', 'gmp_last_check_love_link');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%gmp_markers_groups_multiple_updated';
DELETE FROM wp_options WHERE option_name LIKE '%gmp_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%gmp_db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_def_icons_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_opts_data';
DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send';
DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats';

