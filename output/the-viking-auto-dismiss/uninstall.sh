#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viking_auto_dismiss_site_id'
wp option delete 'viking_auto_dismiss_enabled'
wp option delete 'viking_auto_dismiss_review_dismissed'
wp option delete 'viking_auto_dismiss_review_submitted'
wp option delete 'viking_auto_dismiss_review_next_show'
wp option delete 'viking_auto_dismiss_review_maybe_later_count'
wp option delete 'viking_auto_dismiss_disable_welcome'
wp option delete 'viking_auto_dismiss_review_last_shown'

# Clear Cron Jobs
wp cron event delete 'viking_auto_dismiss_heartbeat'

