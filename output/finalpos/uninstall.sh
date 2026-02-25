#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'finalpos_current_stage'
wp option delete 'finalpos_jwt_token'
wp option delete 'finalpos_consumer_key'
wp option delete 'finalpos_consumer_secret'
wp option delete 'finalpos_last_nonce'
wp option delete 'finalpos_last_nonce_time'
wp option delete 'woocommerce_coming_soon'

# Delete Transients
wp transient delete 'finalpos_setup_error'

# Clear Cron Jobs
wp cron event delete 'finalpos_trigger_product_webhooks'

