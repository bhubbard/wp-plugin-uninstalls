-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blockspare_redirect_to_welcome', 'blockspare_setup_notice_start_time', 'blockspare_upgrade_notice_start_time', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'awpa_author_metabox_integration', 'blockspare_activation_date', 'blockspare_current_version_installed', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blockspare_setup_notice_dismiss_temporary_start_time', 'blockspare_setup_notice_dismiss', 'blockspare_upgrade_notice_dismiss_temporary_start_time', 'blockspare_upgrade_notice_dismiss', 'wpma_author', 'blockspare_templates_image_hash', 'blockspare_favorite_layouts');
DELETE FROM wp_usermeta WHERE meta_key IN ('blockspare_setup_notice_dismiss_temporary_start_time', 'blockspare_setup_notice_dismiss', 'blockspare_upgrade_notice_dismiss_temporary_start_time', 'blockspare_upgrade_notice_dismiss', 'wpma_author', 'blockspare_templates_image_hash', 'blockspare_favorite_layouts');
DELETE FROM wp_termmeta WHERE meta_key IN ('blockspare_setup_notice_dismiss_temporary_start_time', 'blockspare_setup_notice_dismiss', 'blockspare_upgrade_notice_dismiss_temporary_start_time', 'blockspare_upgrade_notice_dismiss', 'wpma_author', 'blockspare_templates_image_hash', 'blockspare_favorite_layouts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blockspare_setup_notice_dismiss_temporary_start_time', 'blockspare_setup_notice_dismiss', 'blockspare_upgrade_notice_dismiss_temporary_start_time', 'blockspare_upgrade_notice_dismiss', 'wpma_author', 'blockspare_templates_image_hash', 'blockspare_favorite_layouts');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary';

