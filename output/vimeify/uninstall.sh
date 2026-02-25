#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vimeify_tools'
wp option delete '_vimeo_access_token'
wp option delete 'vimeify_auth'
wp option delete 'vimeify_welcome'
wp option delete 'vimeify_version'
wp option delete 'dgv_settings'
wp option delete 'vimeify_gravityforms_migration_completed'
wp option delete 'vimeify_wpforms_migration_completed'
wp option delete 'vimeify_forms_migration_completed'
wp option delete 'vimeify_forms_migration_date'
wp option delete 'vimeify_default_profile'
wp option delete 'vimeify_settings_migration_complete'
wp option delete 'vimeify_settings_migration_complete_date'
wp option delete 'vimeify_settings'
wp option delete 'vimeify_migration_legacy_migrator'
wp option delete 'vimeify_last_metadata_sync'
wp option delete 'vimeify_last_status_sync'
wp option delete 'vimeify_tmp_files'
wp option delete 'vimeify_metadata'
wp option delete 'classic-editor-replace'
wp option delete 'opb_css_file_paths'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_gallery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_gallery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_gallery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_gallery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_gallery_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_gallery_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_gallery_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_gallery_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_gallery_videos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_gallery_videos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_gallery_videos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_gallery_videos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'vimeify_gallery_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'vimeify_gallery_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'vimeify_gallery_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'vimeify_gallery_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vimeify_gallery_videos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vimeify_gallery_videos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vimeify_gallery_videos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vimeify_gallery_videos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vimeify_gallery_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vimeify_gallery_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vimeify_gallery_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vimeify_gallery_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_migration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_migration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_migration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_migration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_original_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_original_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_original_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_original_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_last_sync_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_last_sync_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_last_sync_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_last_sync_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_pictures'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_pictures'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_pictures'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_pictures'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_embed_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_embed_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_embed_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_embed_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vimeify_screen_options_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vimeify_screen_options_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vimeify_screen_options_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vimeify_screen_options_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vimeify_404_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vimeify_404_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vimeify_404_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vimeify_404_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_vimeo_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_vimeo_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_vimeo_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_vimeo_thumbnail'"
