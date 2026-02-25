-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HMYWSK_Degiskenler_ayarlar', 'HMYWSK_Degiskenler_sozlesme1', 'HMYWSK_Degiskenler_sozlesme2', 'HMYWSK_Degiskenler_sozlesme3', 'misha_upgrade_YOUR_PLUGIN_SLUG');

