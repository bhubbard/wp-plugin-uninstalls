#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngsurvey_version'

# Delete Transients
wp transient delete 'ngsurvey_installing'
wp transient delete 'ngsurvey_updated'
wp transient delete 'ngsurvey_check_for_plugins_update'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ngsurvey_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ngsurvey_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ngsurvey_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ngsurvey_settings'"
