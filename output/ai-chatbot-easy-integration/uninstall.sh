#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_chatbot_easy_integration_version'
wp option delete 'ai_chatbot_easy_integration_settings'

# Clear Cron Jobs
wp cron event delete 'ai_chatbot_easy_integration_daily_cron_hook'

