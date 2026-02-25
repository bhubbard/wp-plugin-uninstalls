-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RMFtooltip_style_settings', 'RMFtooltip_version');

