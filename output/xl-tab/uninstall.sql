-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_activation_time', 'donot_disturb', 'thepack_remind_me', 'rtrs_rated', 'xltab');

