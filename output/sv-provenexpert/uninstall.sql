-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sv_proven_expert', 'widget_sv_provenexpert_widget', 'widget_block', 'sv_provenexpert_modules_settings_api_id', 'sv_provenexpert_modules_settings_api_key', 'sv_provenexpert_version', 'widget_sv_provenexpert_modules_widget', 'sv_provenexpert_modules_common_settings_settings_api_id', 'sv_provenexpert_modules_common_settings_settings_api_key', 'sv_provenexpert');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

