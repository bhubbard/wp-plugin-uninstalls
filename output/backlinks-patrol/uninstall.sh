#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blpatrol_check_frequency'
wp option delete 'blpatrol_isindexed_enabled'
wp option delete 'blpatrol_isindexed_api_key'
wp option delete 'blpatrol_isindexed_check_on_cron'
wp option delete 'blpatrol_indexmenow_enabled'
wp option delete 'blpatrol_indexmenow_api_key'
wp option delete 'blpatrol_gsc_client_id'
wp option delete 'blpatrol_gsc_client_secret'
wp option delete 'blpatrol_last_global_check'
wp option delete 'blpatrol_last_indexation_check'
wp option delete 'blpatrol_currency'
wp option delete 'blpatrol_indexmenow_auto_index'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blpatrol_%'"
wp option delete 'blpatrol_isindexed_project_id'
wp option delete 'blpatrol_db_version'

# Delete Transients
wp transient delete 'blpatrol_admin_notice'

# Clear Cron Jobs
wp cron event delete 'blpatrol_daily_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blpatrol_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blpatrol_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blpatrol_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blpatrol_screen_options'"
