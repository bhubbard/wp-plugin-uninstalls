-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2p_tab', 'wp2p_settings', 'wp2p_tab_saved', 'wp2p_settings_saved', 'wp2p_published', 'wp2p_pref');

