#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'waint_token_expiry'
wp option delete 'waint_token'
wp option delete 'waint_refresh_token'
wp option delete 'waint_last_allegro_orders_processed'
wp option delete 'waint_delayed_settings_error'
wp option delete 'waint_options'
wp option delete 'waint_code_verifier'
wp option delete 'waint_state'

# Clear Cron Jobs
wp cron event delete 'waint_check_new_orders_allegro'

