#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llmssttr_retention_days'
wp option delete 'llmssttr_cached_content'
wp option delete 'llmssttr_last_updated'
wp option delete 'llmssttr_owner_name'
wp option delete 'llmssttr_owner_email'
wp option delete 'llmssttr_owner_website'
wp option delete 'llmssttr_policy_url'
wp option delete 'llmssttr_include_post_types'

# Clear Cron Jobs
wp cron event delete 'llmssttr_daily_cleanup'
wp cron event delete 'llmssttr_refresh_cache'

