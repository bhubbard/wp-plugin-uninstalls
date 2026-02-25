#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_on'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%review_dismissed'"
