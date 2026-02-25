#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icrmw_basic_enable_booking_tab'
wp option delete 'icrmw_basic_enable_request_tab'
wp option delete 'icrmw_booking_tab_main_label'
wp option delete 'icrmw_tab_adult_title'
wp option delete 'icrmw_tab_children_title'
wp option delete 'icrmw_tab_total_payment_title'
wp option delete 'icrmw_booking_tab_button_title'
wp option delete 'icrmw_request_tab_button_title'
wp option delete 'icrmw_request_tab_main_label'
wp option delete 'icrmw_request_tab_name_title'
wp option delete 'icrmw_request_tab_name_placeholder'
wp option delete 'icrmw_request_tab_email_title'
wp option delete 'icrmw_request_tab_email_placeholder'
wp option delete 'icrmw_request_tab_phone_title'
wp option delete 'icrmw_request_tab_phone_placeholder'
wp option delete 'icrmw_booking_tab_dates_label'
wp option delete 'icrmw_request_tab_dates_label'
wp option delete 'icrmw_request_form_email_body'
wp option delete 'icrmw_request_form_email_recipient'
wp option delete 'icrmw_request_form_email_subject'
wp option delete 'icrmw_plugin_activated'
wp option delete 'icrmw_basic_enable_deposit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icrmw_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icrmw_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icrmw_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icrmw_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_rent_charge_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_rent_charge_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_rent_charge_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_rent_charge_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_show_timepicker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_show_timepicker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_show_timepicker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_show_timepicker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_check_in_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_check_in_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_check_in_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_check_in_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_check_out_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_check_out_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_check_out_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_check_out_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_check_out_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_check_out_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_check_out_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_check_out_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_max_adults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_max_adults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_max_adults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_max_adults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icrmw_max_childs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icrmw_max_childs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icrmw_max_childs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icrmw_max_childs'"
