#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'san_notifications'
wp option delete 'san_instances'
wp option delete 'woocommerce_bacs_accounts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'san_wa_%'"
wp option delete 'wnt_connection'

# Clear Cron Jobs
wp cron event delete 'followup_cron_hook'
wp cron event delete 'followup_cron_hook_2'
wp cron event delete 'followup_cron_hook_3'
wp cron event delete 'aftersales_cron_hook'
wp cron event delete 'abandoned_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'followup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'followup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'followup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'followup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'followup_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'followup_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'followup_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'followup_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'followup_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'followup_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'followup_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'followup_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aftersales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aftersales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aftersales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aftersales'"
