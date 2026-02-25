-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('podium_settings', 'podium-installation', 'podium-feature-flag', 'podium-script-code');

