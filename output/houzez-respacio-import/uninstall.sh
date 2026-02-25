#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'property_verification_api'
wp option delete 'verify_api'
wp option delete 'sync_type'
wp option delete 'xmlFileLink'
wp option delete 'respacio_save_image_formats_list1'
wp option delete 'respacio_save_image_formats_list2'
wp option delete 'RespacioHouzezImportLogPerPage'
wp option delete 'RespacioHouzezImportCrmBasePath'
wp option delete 'RespacioHouzezImportEmailControllerPath'
wp option delete 'RespacioHouzezImportCreateAccountPath'
wp option delete 'RespacioHouzezImportSignature'
wp option delete 'RespacioHouzezImportAccountLoginPath'
wp option delete 'respacio_houzez_custom_fields'
wp option delete 'property_export'

# Clear Cron Jobs
wp cron event delete 'add_daily_properties'
wp cron event delete 'delete_images_trigger'
wp cron event delete 'import_images_trigger'
wp cron event delete 'import_property_translation_trigger'
wp cron event delete 'property_attachment_download'
wp cron event delete 'add_hourly_properties_url'
wp cron event delete 'add_video_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fave_property_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fave_property_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fave_property_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fave_property_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fave_agent_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fave_agent_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fave_agent_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fave_agent_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fave_agent_office_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fave_agent_office_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fave_agent_office_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fave_agent_office_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_type_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_type_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_type_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_type_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_field_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_field_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_field_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_field_map'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fave_video_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fave_video_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fave_video_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fave_video_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_id'"
