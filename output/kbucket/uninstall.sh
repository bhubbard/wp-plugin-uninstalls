#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kb_auto_upload'
wp option delete 'kb_auto_upload_stage'
wp option delete 'kb_auto_upload_logs'
wp option delete 'kb_auto_upload_file'
wp option delete 'kb_auto_images'
wp option delete 'kb_auto_images_all'
wp option delete 'kb_auto_upload_image_hold'
wp option delete 'kb_setup_page_id'
wp option delete 'kb_widget_data'
wp option delete 'kb_settings'
wp option delete 'kbucket_data'

# Clear Cron Jobs
wp cron event delete 'kb_activate_cron_upload_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kb_custom_photo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kb_custom_photo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kb_custom_photo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kb_custom_photo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'article_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'article_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'article_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'article_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url_kbucket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url_kbucket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url_kbucket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url_kbucket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_id_kbucket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_id_kbucket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_id_kbucket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_id_kbucket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_attachment_orig_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_attachment_orig_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_attachment_orig_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_attachment_orig_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_attachment_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_attachment_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_attachment_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_attachment_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_attachment_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_attachment_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_attachment_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_attachment_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kb_custom_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kb_custom_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kb_custom_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kb_custom_photo'"
