#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'equipe_last_fetch_date'
wp option delete 'equipe_club_id'
wp option delete 'equipe_rider_licences'
wp option delete 'equipe_cat_show_jumping'
wp option delete 'equipe_cat_dressage'
wp option delete 'equipe_cat_eventing'
wp option delete 'equipe_cat_endurance'
wp option delete 'equipe_cat_breed_eval'
wp option delete 'equipe_cat_multi'
wp option delete 'equipe_cat_default'
wp option delete 'equipe_version'

# Clear Cron Jobs
wp cron event delete 'equipe-fetch-from-api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'equipe_after_install_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'equipe_after_install_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'equipe_after_install_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'equipe_after_install_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'equipe_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'equipe_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'equipe_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'equipe_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'equipe_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'equipe_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'equipe_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'equipe_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'equipe_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'equipe_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'equipe_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'equipe_end_date'"
