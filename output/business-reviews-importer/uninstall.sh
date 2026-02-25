#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brimp_activity_log'

# Delete Transients
wp transient delete 'brimp_oauth_error'
wp transient delete 'brimp_oauth_state'
wp transient delete 'brimp_simple_import_running'
wp transient delete 'brimp_advanced_import_running'
wp transient delete 'brimp_initial_import_running'

# Clear Cron Jobs
wp cron event delete 'brimp_simple_import'
wp cron event delete 'brimp_advanced_import'
wp cron event delete 'brimp_initial_import_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%google_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%google_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%google_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%google_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%import_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%import_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%import_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%import_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%import_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%import_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%import_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%import_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%test_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%test_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%test_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%test_import'"
