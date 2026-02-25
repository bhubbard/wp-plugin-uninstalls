#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nfd_coming_soon'
wp option delete 'instawp_sync_connect_id'
wp option delete 'instawp_is_staging'
wp option delete 'instawp_sync_parent_connect_data'
wp option delete 'instawp_files_offset'
wp option delete 'instawp_db_offset'
wp option delete 'instawp_large_files_list'
wp option delete 'instawp_cdn_purge_queue'
wp option delete 'instawp_parent_is_on_local'
wp option delete 'instawp_login_code'
wp option delete 'instawp_api_options'
wp option delete 'current_file_index'
wp option delete 'total_files'
wp option delete 'instawp_connect_version'
wp option delete 'iwp_sync_config_data'
wp option delete 'instawp_migration_details'
wp option delete 'instawp_backup_part_size'
wp option delete 'instawp_max_file_size_allowed'
wp option delete 'instawp_reset_type'
wp option delete 'instawp_db_method'
wp option delete 'instawp_default_user'
wp option delete 'instawp_rm_heartbeat'
wp option delete 'instawp_api_heartbeat'
wp option delete 'instawp_rm_file_manager'
wp option delete 'instawp_rm_database_manager'
wp option delete 'instawp_rm_install_plugin_theme'
wp option delete 'instawp_rm_config_management'
wp option delete 'instawp_rm_inventory'
wp option delete 'instawp_rm_debug_log'
wp option delete 'instawp_last_heartbeat_sent'
wp option delete 'instawp_staging_sites'
wp option delete 'instawp_is_event_syncing'
wp option delete 'instawp_event_batch_data'
wp option delete 'iwp_failed_direct_process_media_events'
wp option delete 'nav_menu_options'
wp option delete 'iwp_sync_processed_media_ids'
wp option delete 'instawp_connect_plan_id'
wp option delete 'instawp_connect_plan_expire_days'
wp option delete 'instawp_connect_plan_disconnected'
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'

# Delete Transients
wp transient delete 'instawp_cache_purged'
wp transient delete 'instawp_generate_large_files'
wp transient delete 'instawp_database_manager_login_token'
wp transient delete 'instawp_migration_completed'
wp transient delete 'instawp_sync_per_page'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'instawp_clean_file_manager'
wp cron event delete 'instawp_clean_database_manager'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instawp_temporary_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instawp_temporary_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instawp_temporary_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instawp_temporary_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instawp_temporary_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instawp_temporary_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instawp_temporary_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instawp_temporary_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instawp_temporary_login_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instawp_temporary_login_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instawp_temporary_login_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instawp_temporary_login_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instawp_temporary_login_attempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instawp_temporary_login_attempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instawp_temporary_login_attempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instawp_temporary_login_attempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instawp_event_sync_reference_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instawp_event_sync_reference_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instawp_event_sync_reference_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instawp_event_sync_reference_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instawp_event_term_sync_reference_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instawp_event_term_sync_reference_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instawp_event_term_sync_reference_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instawp_event_term_sync_reference_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instawp_event_user_sync_reference_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instawp_event_user_sync_reference_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instawp_event_user_sync_reference_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instawp_event_user_sync_reference_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
