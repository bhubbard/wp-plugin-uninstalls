#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ltoc_api_key'
wp option delete 'ltoc_tag_relevance'
wp option delete 'ltoc_add_tag_on_save'
wp option delete 'ltoc_batch_posts'
wp option delete 'ltoc_included_categories'
wp option delete 'ltoc_disable_batch'
wp option delete 'ltoc_tag_blacklist'

# Clear Cron Jobs
wp cron event delete 'ltoc_tagging_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ltoc_tagged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ltoc_tagged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ltoc_tagged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ltoc_tagged'"
