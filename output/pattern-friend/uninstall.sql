-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pattern_friend_mobile_max_threshold', 'pattern_friend_tablet_max_threshold', 'pattern_friend_header_sticky', 'pattern_friend_dynamic_css_version', 'pattern_friend_plugin_activated');

