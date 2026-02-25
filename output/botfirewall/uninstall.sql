-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('botfirewall_enabled', 'botfirewall_allowed_bots', 'botfirewall_settings', 'botfirewall_customization');

