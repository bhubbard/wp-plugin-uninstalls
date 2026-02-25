#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'podbase_temp_state'
wp option delete 'podbase_temp_state_time'
wp option delete 'podbase_temp_state_user_id'
wp option delete 'podbase_internal_store_id'
wp option delete 'podbase_disconnect_token'
wp option delete 'podbase_key_id'
wp option delete 'podbase_connected'
wp option delete 'podbase_connection_date'
wp option delete 'podbase_aae_store_url'

