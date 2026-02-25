-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('generate_background_settings', 'generate_settings', 'generate_spacing_settings');

