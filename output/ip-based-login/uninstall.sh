#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipbl_ip_pref'
wp option delete 'ipbl_version'
wp option delete 'ipbl_settings'
wp option delete 'ipbl_dropdown'
wp option delete 'ipbl_sync_settings'
wp option delete 'ipbl_dismiss_sale_notice'
wp option delete 'ipbl_sync_time'
wp option delete 'ipbl_donate_popup'

# Clear Cron Jobs
wp cron event delete 'ipbl_sync_cron_action'

