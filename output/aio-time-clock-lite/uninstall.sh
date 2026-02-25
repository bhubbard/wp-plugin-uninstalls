#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aio_wage_manage'
wp option delete 'aio_company_name'
wp option delete 'aio_timeclock_redirect_employees'
wp option delete 'aio_time_clock_lite_update_redirect'
wp option delete 'aio_pay_schedule'
wp option delete 'aio_timeclock_text_align'
wp option delete 'aio_timeclock_show_avatar'
wp option delete 'aio_tc_lite_widgettitle'
wp option delete 'aio_time_clock_lite_widget_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employee_clock_in_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employee_clock_in_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employee_clock_in_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employee_clock_in_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employee_clock_out_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employee_clock_out_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employee_clock_out_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employee_clock_out_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'department'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'department'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'department'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'department'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_address_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_address_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_address_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_address_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_address_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_address_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_address_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_address_out'"
