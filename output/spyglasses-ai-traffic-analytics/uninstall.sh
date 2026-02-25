#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spyglasses_api_key'
wp option delete 'spyglasses_debug_mode'
wp option delete 'spyglasses_auto_sync_patterns'
wp option delete 'spyglasses_last_pattern_sync'
wp option delete 'spyglasses_block_ai_model_trainers'

# Delete Transients
wp transient delete 'spyglasses_agent_patterns'

# Clear Cron Jobs
wp cron event delete 'spyglasses_update_patterns'

