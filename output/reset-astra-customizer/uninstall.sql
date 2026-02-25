-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('astra-typography-presets', 'astra-color-palettes', 'astra_admin_settings');

