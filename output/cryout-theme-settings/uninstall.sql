-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ma_options', 'nirvana_settings', 'parabola_settings', 'tempera_settings');

