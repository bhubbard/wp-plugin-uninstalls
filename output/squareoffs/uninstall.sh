#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'squareoffs_user_data_%'"
wp option delete 'classic-editor-replace'

# Delete Transients
wp transient delete 'squareoffs_current_comment_status'
wp transient delete 'squareoffs_api_categories'

# Clear Cron Jobs
wp cron event delete 'squareoffs_fetch_categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'squareoffs_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'squareoffs_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'squareoffs_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'squareoffs_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soMargins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soMargins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soMargins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soMargins'"
