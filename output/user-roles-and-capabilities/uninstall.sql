-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solvease_wprc_plugin_version', 'solvease_wp_rc_caps', 'wp_user_roles');

