-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livesite_plugin_settings', 'ls_pm_payment_icons');

