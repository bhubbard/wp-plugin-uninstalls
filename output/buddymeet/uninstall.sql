-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddymeet_jitsi_appid', 'buddymeet_jitsi_apikeyid', 'buddymeet_jitsi_privatekey', 'buddymeet_jitsi_domain', 'active_sitewide_plugins', '_buddymeet_enabled', '_buddymeet_version');

