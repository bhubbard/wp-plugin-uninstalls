-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_wpspeedo_team_installed_time', 'wpspeedo_team_dummy_post_data_created', 'wpspeedo_team_dummy_shortcode_data_created', '_wps_team_installed_time', 'wps_team_version', 'wps_team_is_pro_active', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'wps_team_csv_rows');
DELETE FROM wp_options WHERE option_name LIKE '%_dummy_post_data_created';
DELETE FROM wp_options WHERE option_name LIKE '%_dummy_terms';
DELETE FROM wp_options WHERE option_name LIKE '%_dummy_attachments';
DELETE FROM wp_options WHERE option_name LIKE '%_dummy_posts';
DELETE FROM wp_options WHERE option_name LIKE '%_dummy_post_data_creating';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_email', '_mobile', '_telephone', '_company', '_designation', '_website', '_gallery', '_thumbnail_id', '_first_name', '_last_name', '_wp_attachment_image_alt', '_wps_team_import_id', '_social_links', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_email', '_mobile', '_telephone', '_company', '_designation', '_website', '_gallery', '_thumbnail_id', '_first_name', '_last_name', '_wp_attachment_image_alt', '_wps_team_import_id', '_social_links', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_email', '_mobile', '_telephone', '_company', '_designation', '_website', '_gallery', '_thumbnail_id', '_first_name', '_last_name', '_wp_attachment_image_alt', '_wps_team_import_id', '_social_links', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_email', '_mobile', '_telephone', '_company', '_designation', '_website', '_gallery', '_thumbnail_id', '_first_name', '_last_name', '_wp_attachment_image_alt', '_wps_team_import_id', '_social_links', '_elementor_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%--dummy';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%--dummy';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%--dummy';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%--dummy';

