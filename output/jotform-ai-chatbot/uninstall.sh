#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jotform_ai_chatbot_options'

# Clear Cron Jobs
wp cron event delete 'jotform_ai_chatbot_cron_hook'

