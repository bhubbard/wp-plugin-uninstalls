#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_control_activated'

# Clear Cron Jobs
wp cron event delete 'content_control_license_status_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_control_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_control_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_control_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_control_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_control_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_control_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_control_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_control_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_control_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_control_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_control_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_control_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restriction_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restriction_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restriction_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restriction_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_version'"
