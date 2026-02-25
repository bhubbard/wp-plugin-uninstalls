-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortcoder_last_changelog', 'sc_settings', 'shortcoder_version', 'shortcoder_data', 'shortcoder_flags', 'sc_upgrade');

