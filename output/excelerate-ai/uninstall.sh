#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'excelerate_ai_api_key'

# Delete Transients
wp transient delete 'excelerate_ai_gpt_content_update_lock'

# Clear Cron Jobs
wp cron event delete 'gpt_content_update_event'

