#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwai_chatbots'
wp option delete 'mwai_advisor_data'
wp option delete 'mwai_token_test_mode'
wp option delete 'mwai_test_token_data'
wp option delete 'mwai_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mwai_cron_running_%' OR option_name LIKE '_site_transient_mwai_cron_running_%'"
wp transient delete 'mwai_cron_last_run'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mwai_custom_chatbot_%' OR option_name LIKE '_site_transient_mwai_custom_chatbot_%'"
wp transient delete 'mwai_cron_running_mwai_tasks_internal_run'
wp transient delete 'mwai_cron_running_mwai_tasks_internal_dev_run'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mwai_video_metadata_%' OR option_name LIKE '_site_transient_mwai_video_metadata_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mwai_video_saved_%' OR option_name LIKE '_site_transient_mwai_video_saved_%'"

# Clear Cron Jobs
wp cron event delete 'mwai_tasks_internal_run'
wp cron event delete 'mwai_tasks_internal_dev_run'
wp cron event delete 'mwai_discussions'
wp cron event delete 'mwai_files_cleanup'
wp cron event delete 'mwai_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mwai_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mwai_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mwai_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mwai_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mwai_file_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mwai_file_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mwai_file_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mwai_file_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_mwai_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_mwai_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_mwai_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_mwai_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mwai_purpose'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mwai_purpose'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mwai_purpose'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mwai_purpose'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mwai_envId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mwai_envId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mwai_envId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mwai_envId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwai_draft_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwai_draft_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwai_draft_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwai_draft_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwai_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwai_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwai_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwai_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwai_latency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwai_latency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwai_latency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwai_latency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwai_env_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwai_env_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwai_env_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwai_env_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
