#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpress_file_upload_table_log_version'
wp option delete 'wordpress_file_upload_table_userdata_version'
wp option delete 'wordpress_file_upload_table_dbxqueue_version'
wp option delete 'wfu_environment_variables'
wp option delete 'wordpress_file_upload_options'
wp option delete 'wfu_maintenance_options'
wp option delete 'wordpress_file_upload_last_idlog'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wfu_params_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wfu_gst_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count'"
wp option delete 'wfu_params_index'
wp option delete 'wordpress_file_upload_pd_policies'

# Clear Cron Jobs
wp cron event delete 'wfu_daily_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brief'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brief'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brief'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brief'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WFU_Consent_Data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WFU_Consent_Data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WFU_Consent_Data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WFU_Consent_Data'"
