#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openasset_settings'
wp option delete 'openasset_data'
wp option delete 'openasset_sync_running'
wp option delete 'openasset_cpts_first_run_complete'
wp option delete 'openasset_project_sync_count'
wp option delete 'openasset_employee_sync_count'
wp option delete 'openasset_last_project_updated'
wp option delete 'openasset_last_employee_updated'
wp option delete 'openasset_total_project_count'
wp option delete 'openasset_total_employee_count'
wp option delete 'openasset_text_assets_sync_count'
wp option delete 'openasset_sync_error_count'
wp option delete 'openasset_employee_posts_deleted'
wp option delete 'openasset_project_posts_deleted'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'

# Delete Transients
wp transient delete 'openasset_queue_initiating'
wp transient delete 'openasset_sync_trigger_source'
wp transient delete 'openasset_force_full_sync'
wp transient delete 'openasset_sync_type_override'
wp transient delete 'openasset_migration_notice'
wp transient delete 'jetpack_is_single_user'

# Clear Cron Jobs
wp cron event delete 'openasset_feed_refresh'
wp cron event delete 'openasset_clear_sync_context'
wp cron event delete 'run_openasset_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'openasset_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'openasset_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'openasset_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'openasset_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oa_last_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oa_last_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oa_last_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oa_last_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'openasset_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'openasset_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'openasset_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'openasset_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oa_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oa_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oa_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oa_content_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'openasset_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'openasset_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'openasset_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'openasset_parent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sort_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sort_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sort_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sort_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'oa_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'oa_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'oa_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'oa_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'openasset_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'openasset_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'openasset_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'openasset_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_oa_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_oa_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_oa_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_oa_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_poster_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_poster_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_poster_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_poster_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_video_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_video_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_video_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_video_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_poster_for_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_poster_for_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_poster_for_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_poster_for_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'md5_at_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'md5_at_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'md5_at_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'md5_at_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oa_image_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oa_image_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oa_image_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oa_image_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oa_size_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oa_size_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oa_size_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oa_size_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'photographer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copyright_holder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copyright_holder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copyright_holder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copyright_holder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uploaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uploaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uploaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uploaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_display_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_display_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_display_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_display_order'"
