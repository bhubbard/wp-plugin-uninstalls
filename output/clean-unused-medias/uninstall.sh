#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lnjcm_medias_in_content_index'
wp option delete 'lnjcm_medias_in_content_ids'
wp option delete 'lnjcm_medias_in_postmeta_ids'
wp option delete 'lnjcm_medias_in_usermeta_ids'
wp option delete 'lnjcm_medias_in_option_ids'
wp option delete 'lnjcm_medias_in_content_last_check'
wp option delete 'lnjcm_medias_in_content_pause'
wp option delete 'lnjcm_medias_in_content_completed'
wp option delete 'lnjcm_medias_in_content_completed_date'
wp option delete 'lnjcm_medias_in_content_processing'

# Clear Cron Jobs
wp cron event delete 'lnjcm_check_medias_in_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lnjcm_used_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lnjcm_used_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lnjcm_used_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lnjcm_used_in'"
