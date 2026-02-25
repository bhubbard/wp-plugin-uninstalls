#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'shipsy_auto_sync_consignments_cron_hook'
wp cron event delete 'shipsy_auto_update_consignment_status_cron_hook'

