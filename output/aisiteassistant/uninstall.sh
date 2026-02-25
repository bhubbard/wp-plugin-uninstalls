#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisiteassistant_chat_enabled'
wp option delete 'aisiteassistant_last_db_time'
wp option delete 'aisiteassistant_update_frequency'
wp option delete 'aisiteassistant_last_url'
wp option delete 'aisiteassistant_task_id'
wp option delete 'aisiteassistant_task_status'
wp option delete 'aisiteassistant_api_key'
wp option delete 'aisiteassistant_secret_key'
wp option delete 'aisiteassistant_next_scheduled_time'
wp option delete 'aisiteassistant_chat_placeholder'
wp option delete 'aisiteassistant_chat_send_label'
wp option delete 'aisiteassistant_status'
wp option delete 'aisiteassistant_last_db'

# Clear Cron Jobs
wp cron event delete 'AISiteAssistant_cron_event'

