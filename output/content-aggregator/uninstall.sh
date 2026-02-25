#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_aggregator_version'
wp option delete 'content_aggregator_db_version'
wp option delete 'content_aggregator_settings'

# Clear Cron Jobs
wp cron event delete 'content_aggregator_update_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_aggregator_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_aggregator_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_aggregator_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_aggregator_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_aggregator_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_aggregator_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_aggregator_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_aggregator_source'"
