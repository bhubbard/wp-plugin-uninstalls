-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qis_messages', 'qis_forex_modified', 'qis_forex_exchange', 'qpp_key', 'qis_track', 'qis_dropdown', 'qis_upgrade', 'qis_settingsone', 'qis_settings1', 'qis_settingstwo', 'qis_settings2', 'qis_settingsthree', 'qis_settings3', 'qis_settingsfour', 'qis_settings4', 'qis_settingsfive', 'qis_settings5', 'qis_formnumber', 'qis_style', 'qis_reference', 'qis_select_form', 'qis_register_style', 'qis_progress', 'qis_outputtable', 'qis_akismet', 'qis_advanced', 'qis_track_applications');
DELETE FROM wp_options WHERE option_name LIKE 'qis_settings%';
DELETE FROM wp_options WHERE option_name LIKE 'qis_register%';
DELETE FROM wp_options WHERE option_name LIKE 'qis_autoresponder%';
DELETE FROM wp_options WHERE option_name LIKE 'qis_application%';
DELETE FROM wp_options WHERE option_name LIKE 'qis_full_application%';
DELETE FROM wp_options WHERE option_name LIKE 'qis_outputtable%';

