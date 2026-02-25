#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'telegram_fetch_settings_option_name'
wp option delete 'last_tg_cron_executed'

# Clear Cron Jobs
wp cron event delete 'tpost_sgs_scrapeTelegram_cron_event'

