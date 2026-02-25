#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'red8_ai_color_palette_option'
wp option delete 'red8_ai_color_palette_settings_key_saved_date'

# Clear Cron Jobs
wp cron event delete 'red8_schedule_expired_key_hook'

