#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aetwtaha4cca_email_address'
wp option delete 'aetwtaha4cca_telegram_bot_id'
wp option delete 'aetwtaha4cca_telegram_chat_id'
wp option delete 'aetwtaha4cca_start_time'

# Delete Transients
wp transient delete 'aetwtaha4cca_email_scheduler_activated'

# Clear Cron Jobs
wp cron event delete 'aetwtaha4cca_send_email_event'

