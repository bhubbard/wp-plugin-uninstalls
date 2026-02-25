#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ginvoice_sync_last_update'
wp option delete 'ginvoice_db_version'
wp option delete 'ginvoice_sale_channel_id'

# Clear Cron Jobs
wp cron event delete 'ginvoice_auto_invoice'

