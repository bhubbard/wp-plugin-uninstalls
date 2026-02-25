#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'totalcontest_nps'
wp option delete 'totalcontest_onboarding'
wp option delete 'widget_totalcontest_contest'
wp option delete 'totalcontest_uninstall_feedback'
wp option delete 'totalcontest_options_repository'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_email'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_modules_store_response' OR option_name LIKE '_site_transient_%_modules_store_response'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'totalcontest/actions/urls/flush'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tc_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tc_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tc_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tc_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tc_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tc_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tc_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tc_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tc_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tc_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tc_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tc_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_migrated'"
