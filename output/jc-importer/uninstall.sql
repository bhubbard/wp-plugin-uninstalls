-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iwp_muplugin_version', 'iwp_settings', 'iwp_exporter_csv_config', 'iwp_exporter_json_config', 'iwp_exporter_xml_config', 'iwp_db_version', 'jci_db_version', 'iwp_is_migrating', 'iwp_compat_blacklist', 'jci_db_import_file_ids');
DELETE FROM wp_options WHERE option_name LIKE 'iwp_exporter_config_%';
DELETE FROM wp_options WHERE option_name LIKE 'iwp_importer_config_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iwp_attachment_src', '_wp_attachment_image_alt', '_iwp_zip', '_importer_files', '_iwp_session', '_iwp_version', '_iwp_trash_status', '_iwp_trash_importer', '_thumbnail_id', '_import_settings', '_iwp_v2_importer', '_mapped_fields', '_attachments', '_taxonomies', '_parser_settings', 'field_permissions', '_jci_cron_enabled', '_jci_cron_minutes', '_iwp_v1_importer', '_iwp_cron_updated', '_iwp_cron_status', '_iwp_cron_version', '_ewp_status', '_iwp_cron_scheduled', '_iwp_cron_last_ran');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iwp_attachment_src', '_wp_attachment_image_alt', '_iwp_zip', '_importer_files', '_iwp_session', '_iwp_version', '_iwp_trash_status', '_iwp_trash_importer', '_thumbnail_id', '_import_settings', '_iwp_v2_importer', '_mapped_fields', '_attachments', '_taxonomies', '_parser_settings', 'field_permissions', '_jci_cron_enabled', '_jci_cron_minutes', '_iwp_v1_importer', '_iwp_cron_updated', '_iwp_cron_status', '_iwp_cron_version', '_ewp_status', '_iwp_cron_scheduled', '_iwp_cron_last_ran');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iwp_attachment_src', '_wp_attachment_image_alt', '_iwp_zip', '_importer_files', '_iwp_session', '_iwp_version', '_iwp_trash_status', '_iwp_trash_importer', '_thumbnail_id', '_import_settings', '_iwp_v2_importer', '_mapped_fields', '_attachments', '_taxonomies', '_parser_settings', 'field_permissions', '_jci_cron_enabled', '_jci_cron_minutes', '_iwp_v1_importer', '_iwp_cron_updated', '_iwp_cron_status', '_iwp_cron_version', '_ewp_status', '_iwp_cron_scheduled', '_iwp_cron_last_ran');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iwp_attachment_src', '_wp_attachment_image_alt', '_iwp_zip', '_importer_files', '_iwp_session', '_iwp_version', '_iwp_trash_status', '_iwp_trash_importer', '_thumbnail_id', '_import_settings', '_iwp_v2_importer', '_mapped_fields', '_attachments', '_taxonomies', '_parser_settings', 'field_permissions', '_jci_cron_enabled', '_jci_cron_minutes', '_iwp_v1_importer', '_iwp_cron_updated', '_iwp_cron_status', '_iwp_cron_version', '_ewp_status', '_iwp_cron_scheduled', '_iwp_cron_last_ran');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ewp_file_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ewp_file_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ewp_file_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ewp_file_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_importer_file_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_importer_file_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_importer_file_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_importer_file_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_iwp_session_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_iwp_session_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_iwp_session_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_iwp_session_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

