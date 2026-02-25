#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contact_list_settings'
wp option delete 'contact-list-sc'
wp option delete 'contact_list_how_to_show_notice'
wp option delete 'contact_list_rating_show_notice_now_v2'
wp option delete 'contact_list_rating_notice_status_v2'
wp option delete 'contact_list_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'contact_list_rating_notice_later_seconds_v2'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_job_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_job_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_job_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_job_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_cl_custom_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_cl_custom_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_cl_custom_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cl_custom_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_linkedin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_linkedin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_linkedin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_linkedin_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_twitter_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_twitter_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_twitter_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_twitter_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_facebook_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_facebook_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_facebook_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_facebook_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cl_instagram_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cl_instagram_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cl_instagram_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cl_instagram_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
