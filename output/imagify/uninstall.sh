#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'extendify_site_id'
wp option delete 'gform_enable_noconflict'
wp option delete 'ngg_options'
wp option delete 'imagify_old_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ngg_imagify_data_db_version'"
wp option delete 'ms_files_rewriting'
wp option delete 'imagifyp_id'
wp option delete 'imagify_settings'
wp option delete 'imagify_files_db_version'
wp option delete 'imagify_folders_db_version'
wp option delete 'imagify_data'
wp option delete 'ngg_imagify_data_db_version'
wp option delete 'plugin_family_dismiss_promote_imagify'

# Delete Transients
wp transient delete 'imagify_custom-folders_optimize_running'
wp transient delete 'imagify_wp_optimize_running'
wp transient delete 'imagify_bulk_optimization_complete'
wp transient delete 'imagify_missing_next_gen_total'
wp transient delete 'imagify_bulk_optimization_result'
wp transient delete 'imagify_stat_without_next_gen'
wp transient delete 'imagify_bulk_optimization_infos'
wp transient delete 'do_imagify_rating_cron'
wp transient delete 'imagify_user_images_count'
wp transient delete 'imagify_seen_rating_notice'
wp transient delete 'imagify_activation'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'imagify_themes_plugins_to_sync'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'imagify_user_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imagify_rpc_%' OR option_name LIKE '_site_transient_imagify_rpc_%'"
wp transient delete 'update_plugins'
wp transient delete 'imagify_check_licence_1'
wp transient delete 'imagify_attachments_number_modal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imagify-auto-optimize-%' OR option_name LIKE '_site_transient_imagify-auto-optimize-%'"
wp transient delete 'imagify_large_library'
wp transient delete 'imagify_user'
wp transient delete 'imagify_max_image_size'
wp transient delete 'imagify_bulk_optimization_level'

# Clear Cron Jobs
wp cron event delete 'imagify_rating_event'
wp cron event delete 'imagify_update_library_size_calculations_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagify_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagify_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagify_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagify_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagify_optimization_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagify_optimization_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagify_optimization_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagify_optimization_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpos3_filesize_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagify_ignore_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagify_ignore_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagify_ignore_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagify_ignore_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagify_ignore_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagify_ignore_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagify_ignore_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagify_ignore_notices'"
