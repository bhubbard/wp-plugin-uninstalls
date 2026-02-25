#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ovena_acp_api_key'
wp option delete 'ovena_acp_base_url'
wp option delete 'ovena_acp_transmission_mode'
wp option delete 'ovena_acp_batch_size'
wp option delete 'ovena_acp_enable_logging'
wp option delete 'ovena_acp_debug_mode'
wp option delete 'ovena_acp_return_window'
wp option delete 'ovena_acp_auto_sync'
wp option delete 'ovena_acp_sync_interval'
wp option delete 'ovena_acp_debug_logs'
wp option delete 'ovena_acp_logs'
wp option delete 'ovena_acp_api_stats'
wp option delete 'ovena_acp_last_sync'
wp option delete 'ovena_acp_product_sync_status'
wp option delete 'ovena_acp_sync_logs'
wp option delete 'ovena_acp_sync_stats'

# Clear Cron Jobs
wp cron event delete 'ovena_acp_sync'

