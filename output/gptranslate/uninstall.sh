#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gptranslate_options'
wp option delete 'gptranslate_default_language'

# Clear Cron Jobs
wp cron event delete 'gptranslate_daily_update_check'

