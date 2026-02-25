-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cspgf_Main_Settings', 'coderevolution_settings_changed');

