-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp_voice_2_app_setting_id_email', 'mp_voice_2_app_setting_id_password', 'mp_server_email_host', 'mp_server_email_username', 'mp_server_email_password', 'mp_server_email_port', 'mpvoice2app');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('voice2app_narration');
DELETE FROM wp_usermeta WHERE meta_key IN ('voice2app_narration');
DELETE FROM wp_termmeta WHERE meta_key IN ('voice2app_narration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('voice2app_narration');

