#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppsfwoo_db_version'
wp option delete 'ppsfwoo_plans'
wp option delete 'ppsfwoo_subscribed_webhooks'
wp option delete 'ppsfwoo_webhook_id'

# Delete Transients
wp transient delete 'ppsfwoo_refresh_plans_ran'
wp transient delete 'ppsfwoo_customer_nonce'
wp transient delete 'ppsfwoo_ppcp_updated'

# Clear Cron Jobs
wp cron event delete 'ppsfwoo_cron_resubscribe_webhooks'

