-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modula-checks', 'modula_troubleshooting_option', 'modula_defaults_gallery', 'modula_defaults_album', 'modula_custom_permissions', 'modula_pro_license_key', 'use_modula_ai', 'imageseo_api_key', 'modula_ai_api_key', 'fusion_options', 'jetpack_active_modules', 'a3_lazy_load_global_settings', 'modula_image_licensing_option', 'modula_ai_language', 'modula_image_licensing_option ', 'modula_importer', 'photoblocks_galleries', 'modula_settings', 'modula_telemetry_registration_sent', 'modula_telemetry_initial_state_sent', 'modula_telemetry_initial_settings_sent', 'wpchill_telemetry_event_queue', 'wpchill_telemetry_registration_sent', 'modula_telemetry_opted_out', 'modula_telemetry_install_uuid', 'siteorigin_panels_settings', 'modula-rate-time', 'wpchill_all_partners', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'modula_ai_optimizer_status_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('modula-images', '_wp_attachment_image_alt', 'modula-settings', '_customize_changeset_uuid', '_modula_ai_report', '_old_wp_attachment_metadata', '_old_wp_attached_file', '_wp_attachment_metadata', '_modula_original');
DELETE FROM wp_usermeta WHERE meta_key IN ('modula-images', '_wp_attachment_image_alt', 'modula-settings', '_customize_changeset_uuid', '_modula_ai_report', '_old_wp_attachment_metadata', '_old_wp_attached_file', '_wp_attachment_metadata', '_modula_original');
DELETE FROM wp_termmeta WHERE meta_key IN ('modula-images', '_wp_attachment_image_alt', 'modula-settings', '_customize_changeset_uuid', '_modula_ai_report', '_old_wp_attachment_metadata', '_old_wp_attached_file', '_wp_attachment_metadata', '_modula_original');
DELETE FROM wp_commentmeta WHERE meta_key IN ('modula-images', '_wp_attachment_image_alt', 'modula-settings', '_customize_changeset_uuid', '_modula_ai_report', '_old_wp_attachment_metadata', '_old_wp_attached_file', '_wp_attachment_metadata', '_modula_original');

