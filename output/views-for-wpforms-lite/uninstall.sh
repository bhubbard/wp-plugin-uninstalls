#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_view_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_view_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_view_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_view_id'"
