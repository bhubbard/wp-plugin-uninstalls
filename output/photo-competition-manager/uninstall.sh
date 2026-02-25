#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photo_comp_default_settings'
wp option delete 'photo_comp_email_templates'
wp option delete 'photo_comp_global_settings'
wp option delete 'photo_comp_voting_ui_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'photo_comp_email_job_%'"

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'photo_competition_manager_settings_errors'

# Clear Cron Jobs
wp cron event delete 'photo_competition_daily_cron'
wp cron event delete 'photo_comp_send_results_batch'
wp cron event delete 'photo_comp_cleanup_email_jobs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photo_comp_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photo_comp_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photo_comp_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photo_comp_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photo_comp_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photo_comp_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photo_comp_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photo_comp_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photo_comp_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photo_comp_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photo_comp_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photo_comp_member'"
