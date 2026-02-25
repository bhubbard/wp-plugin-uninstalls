#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ncwcapr_restock_display_position'
wp option delete 'ncwcapr_restock_cron_schedule'
wp option delete 'ncwcapr_restock_enable_logging'

# Clear Cron Jobs
wp cron event delete 'ncwcapr_restock_check_dates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restock_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restock_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restock_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restock_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restock_recurrence_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restock_recurrence_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restock_recurrence_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restock_recurrence_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restock_recurrence_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restock_recurrence_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restock_recurrence_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restock_recurrence_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_recurring_restock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_recurring_restock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_recurring_restock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_recurring_restock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_restock_day_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_restock_day_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_restock_day_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_restock_day_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restock_day_of_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restock_day_of_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restock_day_of_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restock_day_of_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restock_recurrence_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restock_recurrence_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restock_recurrence_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restock_recurrence_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
