-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctf_options', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ctf_form_settings', 'ctf_form_settings_custom_fields', 'ctf_form_settings_task_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('ctf_form_settings', 'ctf_form_settings_custom_fields', 'ctf_form_settings_task_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('ctf_form_settings', 'ctf_form_settings_custom_fields', 'ctf_form_settings_task_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ctf_form_settings', 'ctf_form_settings_custom_fields', 'ctf_form_settings_task_format');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

