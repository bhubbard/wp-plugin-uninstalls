#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'md_esc_settings'

# Clear Cron Jobs
wp cron event delete 'md_esc_clean_logs'

