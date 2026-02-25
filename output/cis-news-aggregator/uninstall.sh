#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cis_news_aggregator_options'

# Clear Cron Jobs
wp cron event delete 'cis_news_aggregator_fetch_feeds_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_aggregator_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_aggregator_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_aggregator_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_aggregator_post'"
