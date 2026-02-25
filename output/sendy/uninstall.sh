#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sendy_client_id'
wp option delete 'sendy_client_secret'
wp option delete 'sendy_access_token'
wp option delete 'sendy_refresh_token'
wp option delete 'sendy_token_expires'
wp option delete 'sendy_import_weight'
wp option delete 'sendy_import_products'
wp option delete 'sendy_mark_order_as_completed'
wp option delete 'sendy_processing_method'
wp option delete 'sendy_processable_order_status'
wp option delete 'sendy_default_shop'
wp option delete 'sendy_hostname'
wp option delete 'sendy_webhook_secret'
wp option delete 'sendy_previously_used_preference_id'
wp option delete 'sendy_previously_used_amount'
wp option delete 'sendy_previously_used_shop_id'
wp option delete 'sendy_shipping_methods_last_sync'
wp option delete 'sendy_webhook_last_checked'
wp option delete 'sendy_webhook_id'
wp option delete 'sendy_flash_admin_messages'

# Delete Transients
wp transient delete 'sendy_shipping_preferences'
wp transient delete 'sendy_shops'

# Clear Cron Jobs
wp cron event delete 'sendy_cron'

