-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('helpgent_is_running_background_db_migration_process', 'helpgent_is_running_background_process', 'helpgent_media_clean_up_status', 'helpgent_media_migration_status', 'helpgent_media_migration_route', 'helpgent_cancel_media_migration_process', 'helpgent_media_transfer_status', 'helpgent_total_email_sent', 'helpgent_active_media_driver', 'helpgent_removed_old_pro_plugin', 'helpgent_dismiss_nginx_setup_notice', 'helpgent-settings', 'helpgent_email_template_settings', '_helpgent_options', 'helpgent_legacy_form', 'helpgent_executed_media_clean_up_processor', 'helpgent_executed_media_transfer_processor');
DELETE FROM wp_options WHERE option_name LIKE 'helpgent_is_done_migration:%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('helpgent_timezone', 'helpgent_about', 'helpgent_avatar', 'helpgent_delete_scheduled', 'helpgent_user_number', 'helpgent_user_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('helpgent_timezone', 'helpgent_about', 'helpgent_avatar', 'helpgent_delete_scheduled', 'helpgent_user_number', 'helpgent_user_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('helpgent_timezone', 'helpgent_about', 'helpgent_avatar', 'helpgent_delete_scheduled', 'helpgent_user_number', 'helpgent_user_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('helpgent_timezone', 'helpgent_about', 'helpgent_avatar', 'helpgent_delete_scheduled', 'helpgent_user_number', 'helpgent_user_company');

