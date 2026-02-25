#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'wptelegram_widget_ver'
wp option delete 'wptelegram_widget'

# Clear Cron Jobs
wp cron event delete 'wptelegram_widget_cron_pull_updates'
wp cron event delete 'wptelegram_widget_pull_updates'

