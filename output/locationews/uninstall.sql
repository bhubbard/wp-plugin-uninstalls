-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('locationews_options', 'locationews_user', 'locationews_json_settings', 'locationews_activated', '_locationews_trash', '_locationews_user');

