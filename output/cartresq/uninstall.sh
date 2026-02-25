#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartresq_sync_interval'
wp option delete 'cartresq_enable_auto_sync'
wp option delete 'cartresq_api_url'
wp option delete 'cartresq_api_key'
wp option delete 'cartresq_consumer_key'
wp option delete 'cartresq_consumer_secret'
wp option delete 'cartresq_key_name'
wp option delete 'cartresq_last_sync'
wp option delete 'cartresq_sync_status'
wp option delete 'cartresq_abandonment_threshold'
wp option delete 'cartresq_enable_email_notifications'
wp option delete 'cartresq_track_guest_carts'
wp option delete 'cartresq_minimum_cart_value'
wp option delete 'cartresq_exclude_products'
wp option delete 'cartresq_cart_retention_days'
wp option delete 'cartresq_data_refresh_days'
wp option delete 'cartresq_auto_clear_old_data'
wp option delete 'cartresq_sync_logs'
wp option delete 'cartresq_api_key_name'
wp option delete 'cartresq_api_key_description'
wp option delete 'cartresq_key_type'
wp option delete 'cartresq_key_id'
wp option delete 'cartresq_api_key_id'
wp option delete 'cartresq_last_api_response'
wp option delete 'cartresq_last_api_error'

# Delete Transients
wp transient delete 'cartresq_last_cart'

# Clear Cron Jobs
wp cron event delete 'cartresq_auto_sync'
wp cron event delete 'cartresq_cron_sync'
wp cron event delete 'cartre_cleanup'

