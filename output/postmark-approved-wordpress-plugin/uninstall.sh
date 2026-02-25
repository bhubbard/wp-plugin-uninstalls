#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postmark_settings'
wp option delete 'postmark_enabled'
wp option delete 'postmark_api_key'
wp option delete 'postmark_stream_name'
wp option delete 'postmark_sender_address'
wp option delete 'postmark_force_from'
wp option delete 'postmark_force_html'
wp option delete 'postmark_trackopens'
wp option delete 'postmark_tracklinks'
wp option delete 'postmark_enable_logs'

# Clear Cron Jobs
wp cron event delete 'pm_log_cron_job'

