#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmmcc_plugin_locale'
wp option delete 'wpmmcc_ml_enable_hreflang'
wp option delete 'wpmmcc_ml_enable_canonical'
wp option delete 'wpmmcc_logging_enabled'
wp option delete 'wpmmcc_ml_network_mode'
wp option delete 'wpmmcc_ml_network_source_blog_id'
wp option delete 'wpmmcc_ml_deleted_target_behavior'
wp option delete 'wpmmcc_keep_data_on_uninstall'
wp option delete 'wpmmcc_ml_sitemap_xml_fields'
wp option delete 'wpmmcc_ml_sitemap_rewrite_version'
wp option delete 'wpmmcc_db_version'
wp option delete 'wpmmcc_ml_shared_settings'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'wpmmcc_activation_conflict_notice'
wp transient delete 'wpmmcc_deactivation_warning'

# Clear Cron Jobs
wp cron event delete 'action_scheduler_run_queue'
wp cron event delete 'wpmmcc_ml_execute_task'
wp cron event delete 'wpmmcc_ml_tasks_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmmcc_ml_site_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmmcc_ml_site_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmmcc_ml_site_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmmcc_ml_site_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmmcc_ml_source_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmmcc_ml_source_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmmcc_ml_source_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmmcc_ml_source_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_alt_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_caption_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_content_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_excerpt_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_translated_description_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmmcc_ml_media_description_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmmcc_ml_source_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmmcc_ml_source_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmmcc_ml_source_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmmcc_ml_source_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmmcc_ml_source_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmmcc_ml_source_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmmcc_ml_source_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmmcc_ml_source_post'"
