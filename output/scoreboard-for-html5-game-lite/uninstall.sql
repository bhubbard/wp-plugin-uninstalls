-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfhg_scoreboard_settings', 'sfhg_data', 'sfhg_pluginver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfhg_admin_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfhg_admin_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfhg_admin_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfhg_admin_ignore_notice');

