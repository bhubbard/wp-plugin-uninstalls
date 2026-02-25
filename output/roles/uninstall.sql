-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icreon_wprc_plugin_version', 'icreon_wp_rc_caps', 'wp_user_roles');

