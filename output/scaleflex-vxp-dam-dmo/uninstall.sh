#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfxvxp_version'
wp option delete 'sfxvxp_dam_use_widget_only'
wp option delete 'sfxvxp_dam_token'
wp option delete 'sfxvxp_dam_sec'
wp option delete 'sfxvxp_dam_directory'
wp option delete 'sfxvxp_dam_sync_dam_metadata_to_wp'
wp option delete 'sfxvxp_dam_keep_file'
wp option delete 'sfxvxp_dam_sync_selection_metadata'
wp option delete 'sfxvxp_dam_sync_alt_text'
wp option delete 'sfxvxp_dam_sync_title'
wp option delete 'sfxvxp_dam_sync_description'
wp option delete 'sfxvxp_dam_sync_caption'
wp option delete 'sfxvxp_dam_resize_option'
wp option delete 'sfxvxp_dam_sync_assets_from_dam_to_wp'
wp option delete 'sfxvxp_dam_metadata_to_get_attachment_id'
wp option delete 'sfxvxp_dam_sort_default_option'
wp option delete 'sfxvxp_dam_disable_transformations'
wp option delete 'sfxvxp_dam_skip_download_file_size'
wp option delete 'sfxvxp_dam_enable_ai_embed'
wp option delete 'sfxvxp_dam_widget_views'
wp option delete 'sfxvxp_dmo_token_cname'
wp option delete 'sfxvxp_dmo_standard_mode'
wp option delete 'sfxvxp_dmo_use_origin_url'
wp option delete 'sfxvxp_dmo_lazy_loading'
wp option delete 'sfxvxp_dmo_ignore_svg'
wp option delete 'sfxvxp_dmo_prevent_image_upsize'
wp option delete 'sfxvxp_dmo_image_quality'
wp option delete 'sfxvxp_dmo_maximum_pixel_ratio'
wp option delete 'sfxvxp_dmo_remove_v7'
wp option delete 'sfxvxp_dmo_image_size_attributes'
wp option delete 'sfxvxp_dmo_url_signature'
wp option delete 'sfxvxp_dmo_custom_function'
wp option delete 'sfxvxp_dmo_custom_library'
wp option delete 'sfxvxp_dmo_skip_classes'
wp option delete 'sfxvxp_dmo_skip_files'
wp option delete 'sfxvxp_dmo_enable_srcset'
wp option delete 'sfxvxp_dmo_srcset_widths'
wp option delete 'sfxvxp_setup_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Delete Transients
wp transient delete 'sfxvxp_dam_sass_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sfxvxp_sync_dam_attachment_%' OR option_name LIKE '_site_transient_sfxvxp_sync_dam_attachment_%'"
wp transient delete 'sfxvxp_attachments_cron_lock'

# Clear Cron Jobs
wp cron event delete 'sfxvxp_dam_sync_cron'
wp cron event delete 'sfxvxp_sync_dam_assets_to_wp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfxvxp_dam_select_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfxvxp_dam_select_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfxvxp_dam_select_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfxvxp_dam_select_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfxvxp_dam_delete_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfxvxp_dam_delete_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfxvxp_dam_delete_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfxvxp_dam_delete_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfxvxp_dam_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfxvxp_dam_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfxvxp_dam_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfxvxp_dam_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfxvxp_dam_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfxvxp_dam_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfxvxp_dam_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfxvxp_dam_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfxvxp_dam_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfxvxp_dam_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfxvxp_dam_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfxvxp_dam_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfxvxp_dam_error_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfxvxp_dam_error_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfxvxp_dam_error_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfxvxp_dam_error_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
