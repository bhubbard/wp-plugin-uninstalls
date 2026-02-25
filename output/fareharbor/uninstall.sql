-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fareharbor_version', 'fareharbor_settings', 'fareharbor_kit_version');

