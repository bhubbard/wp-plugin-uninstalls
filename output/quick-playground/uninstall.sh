#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_ids_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_blueprint_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'quickplay_clone_settings_%'"
wp option delete 'qckply_profiles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_display_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_profile_images_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_disable_sync_%'"
wp option delete 'qckply_profile'
wp option delete 'qckply_sync_code'
wp option delete 'qckply_sync_origin'
wp option delete 'qckply_upload_image_path'
wp option delete 'qckply_upload_image_url'
wp option delete 'qckply_upload_image_path_64'
wp option delete 'qckply_upload_image_resized_result'
wp option delete 'qckply_upload_image_resized_error'
wp option delete 'qckply_disable_image_upload'
wp option delete 'qckply_top_ids'
wp option delete 'qckply_image_uploads'
wp option delete 'show_playground_prompt_keys'
wp option delete 'qckply_messages'
wp option delete 'qckply_upload_attachment_id'
wp option delete 'qckply_upload_metadata'
wp option delete 'qckply_upload_basename'
wp option delete 'qckply_upload_image_usort_start'
wp option delete 'qckply_upload_image_usort_done'
wp option delete 'qckply_upload_image_path_size_array'
wp option delete 'qckply_upload_image_path_size_test'
wp option delete 'qckply_upload_image_path_scaled'
wp option delete 'qckply_upload_image_base64'
wp option delete 'qckply_upload_image_raw_result'
wp option delete 'qckply_upload_image_result'
wp option delete 'qckply_upload_image_result_error'
wp option delete 'qckply_upload_image_error_message'
wp option delete 'qckply_save_image_responsedata'
wp option delete 'qckply_site_dir'
wp option delete 'origin_stylesheet'
wp option delete 'qckply_origin_directories'
wp option delete 'qckply_updated_options'
wp option delete 'qckply_dashboard_home'
wp option delete 'qckply_no_cache'
wp option delete 'qckply_sync_date'
wp option delete 'is_qckply_clone'
wp option delete 'qckply_downloaded'
wp option delete 'qckply_clone_posts_log'
wp option delete 'qckply_pages_cloned'
wp option delete 'quickplay_clone_settings_log'
wp option delete 'qckply_clone_custom_log'
wp option delete 'qckply_clone_images_log'
wp option delete 'qckply_clone_images'
wp option delete 'qckply_next_image'
wp option delete 'qckply_saved_images'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_sync_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'json_steps_%'"
wp option delete 'playground_imported'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'qckply_landing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_landing_page_%'"
wp option delete 'use_playground'
wp option delete 'qckply_directories'
wp option delete 'qckply_updated_posts'
wp option delete 'qckply_updated_postmeta'
wp option delete 'cache_created'
wp option delete 'qckply_clone_posts_json'
wp option delete 'qckply_clone_posts_modified'
wp option delete 'qckply_clone_settings_log'
wp option delete 'qckply_clone_settings_json'
wp option delete 'qckply_clone_custom_json'
wp option delete 'qckply_is_demo'
wp option delete 'qckply_hits'
wp option delete 'qckply_uploaded_images'
wp option delete 'site_logo'
wp option delete 'qckply_get_all_attachments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qckply_featured_posts_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_qckply_clone_posts_%' OR option_name LIKE '_site_transient_qckply_clone_posts_%'"
wp transient delete 'qckply_image_to_upload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_qckply_image_to_upload resize meta sizes %' OR option_name LIKE '_site_transient_qckply_image_to_upload resize meta sizes %'"
wp transient delete 'qckply_image_to_upload resize check'
wp transient delete 'qckply_image_to_upload resized'
wp transient delete 'qckply_image_to_upload full size or scaled'
wp transient delete 'qckply_welcome_shown'
wp transient delete 'qckply_messages_updated'
wp transient delete 'qckply_logo'
wp transient delete 'qckply_icon'
wp transient delete 'qckply_images_retry'
wp transient delete 'invalid_sync_code'
wp transient delete 'qckply_last_image_uploaded'
wp transient delete 'qckply_sideload_url'
wp transient delete 'qckply_sideload_id'
wp transient delete 'qckply_key_pages_html'
wp transient delete 'qckply_key_pages'
wp transient delete 'key_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qckply_origin_sideload_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qckply_origin_sideload_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qckply_origin_sideload_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qckply_origin_sideload_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_member_welcome'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_member_welcome'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_member_welcome'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_member_welcome'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachment_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachment_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachment_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachment_updated'"
