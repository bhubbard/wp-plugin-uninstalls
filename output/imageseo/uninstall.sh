#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imageseo_version'
wp option delete 'imageseo_get_total_images'
wp option delete 'imageseo_get_number_image_non_optimize_alt'
wp option delete 'imageseo_bulk_optimizer_last_report'
wp option delete 'imageseo_bulk_image_data'
wp option delete 'imageseo_bulk_optimizer_status'
wp option delete 'imageseo_link_rename_files'

# Delete Transients
wp transient delete 'imageseo_process_query_count_images'
wp transient delete '_imageseo_filename_social_process'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_data_pin_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_data_pin_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_data_pin_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_data_pin_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_data_pin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_data_pin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_data_pin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_data_pin_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_data_pin_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_data_pin_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_data_pin_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_data_pin_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_data_pin_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_data_pin_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_data_pin_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_data_pin_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_rename_file_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_rename_file_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_rename_file_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_rename_file_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_social_media_image_is_generate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_social_media_image_is_generate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_social_media_image_is_generate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_social_media_image_is_generate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageseo_new_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageseo_new_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageseo_new_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageseo_new_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
