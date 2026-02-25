#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'barika_connection_revoked'
wp option delete 'barika_revocation_message'
wp option delete 'barika_webhook_secret'
wp option delete 'barika_last_health_check'
wp option delete 'barika_connection_health'
wp option delete 'barika_connected'
wp option delete 'barika_connection_token'
wp option delete 'barika_store_id'
wp option delete 'barika_connected_at'
wp option delete 'woocommerce_email_from_address'
wp option delete 'barika_custom_api_url'
wp option delete 'barika_webhook_ids'

# Delete Transients
wp transient delete 'barika_oauth_state'

# Clear Cron Jobs
wp cron event delete 'barika_health_check_cron'

