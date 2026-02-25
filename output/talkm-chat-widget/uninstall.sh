#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'talkm-visibility-options'
wp option delete 'talkm-embed-widget-teenant-key'
wp option delete 'talkm-embed-widget-expire-id'
wp option delete 'talkm-embed-widget-company-id'
wp option delete 'talkm-embed-widget-username-id'
wp option delete 'talkm-embed-widget-password-id'
wp option delete 'talkm-embed-widget-status-id'

# Clear Cron Jobs
wp cron event delete 'talkm_add_every_five_minutes_event'

