#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faturatik_trigger_status'
wp option delete 'faturatik_enable_debug'
wp option delete 'faturatik_webhook_secret'
wp option delete 'faturatik_api_token'
wp option delete 'faturatik_email_invoice_info'

# Clear Cron Jobs
wp cron event delete 'faturatik_retry_failed_orders'
wp cron event delete 'faturatik_retry_order'
wp cron event delete 'faturatik_retry_single_order'

