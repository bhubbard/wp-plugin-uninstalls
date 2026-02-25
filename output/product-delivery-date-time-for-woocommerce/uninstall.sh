#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byconsolewooptt_delivery_holiday_sunday_check'
wp option delete 'byconsolewooptt_delivery_holiday_saturday_check'
wp option delete 'byconsolewooptt_delivery_end_time'
wp option delete 'bycproductavailabilit_no_of_days_open_in_calender'
wp option delete 'byconsolewooptt_delivery_start_time'
wp option delete 'byconsolewooptt_delivery_time_duration'
wp option delete 'byconsolewooptt_product_button_text'
wp option delete 'byconsolewooptt_no_of_days_open_in_calender'
wp option delete 'byconsolewooptt_product_sameday_cutoff_lable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byc_enable_for_functions_working'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byc_enable_for_functions_working'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byc_enable_for_functions_working'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byc_enable_for_functions_working'"
