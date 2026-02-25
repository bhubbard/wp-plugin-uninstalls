#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_search_submission_key'

# Clear Cron Jobs
wp cron event delete 'simple_search_submission_async_ping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_search_submission_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_search_submission_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_search_submission_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_search_submission_urls'"
