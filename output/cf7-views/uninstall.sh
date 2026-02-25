#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_views_entries_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reviews_installed_on'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'view_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'view_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'view_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'view_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reviews_already_did'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_cf7_attachment_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_cf7_attachment_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_cf7_attachment_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cf7_attachment_%'"
