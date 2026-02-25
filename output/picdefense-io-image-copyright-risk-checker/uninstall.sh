#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'picdefense_api_key'
wp option delete 'picdefense_user_ID'
wp option delete 'picdefense_test_connect'
wp option delete 'picdefense_inc_all_imgs'
wp option delete 'picdefense_rescan_images'
wp option delete 'picdefense_submit_domain'
wp option delete 'picdefense_plugin_version'
wp option delete 'picdefense_submit_images'
wp option delete 'picdefense_images_count'
wp option delete 'old_attachment_id_to_delete'
wp option delete 'picdio_cache_clear_message_dismissed'

# Delete Transients
wp transient delete 'dirsize_cache'

# Clear Cron Jobs
wp cron event delete 'picdio_scheduled_images_scan'
wp cron event delete 'picdio_scheduled_images_job_submit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
