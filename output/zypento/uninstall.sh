#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zypento_enabled_features'
wp option delete 'zyp_bg_processing'
wp option delete 'zyp_bg_processing_time'

# Clear Cron Jobs
wp cron event delete 'zyp_bg_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zyp_task_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zyp_task_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zyp_task_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zyp_task_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zyp_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zyp_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zyp_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zyp_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zyp_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zyp_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zyp_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zyp_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zyp_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zyp_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zyp_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zyp_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zyp_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zyp_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zyp_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zyp_name'"
