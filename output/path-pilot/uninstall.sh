#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'path_pilot_goal_pages'
wp option delete 'path_pilot_conversion_pages'
wp option delete 'path_pilot_min_hops'
wp option delete 'path_pilot_ignored_user_roles'
wp option delete 'path_pilot_insights_only'
wp option delete 'path_pilot_ready'
wp option delete 'path_pilot_path_stats'
wp option delete 'path_pilot_activation_date'
wp option delete 'path_pilot_cta_text'
wp option delete 'path_pilot_recommend_label'
wp option delete 'path_pilot_dev_mode'
wp option delete 'path_pilot_chat_label'
wp option delete 'path_pilot_allowed_content_types'
wp option delete 'path_pilot_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'path_pilot_analyze_paths'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'path_pilot_setup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'path_pilot_setup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'path_pilot_setup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'path_pilot_setup_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'path_pilot_synopsis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'path_pilot_synopsis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'path_pilot_synopsis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'path_pilot_synopsis'"
