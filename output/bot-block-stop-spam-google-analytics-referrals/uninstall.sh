#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bot_block'
wp option delete 'bot_block_master_table'
wp option delete 'bot_block_log'

# Clear Cron Jobs
wp cron event delete 'bot_block_cron'
wp cron event delete 'bot_block_send_stats'

