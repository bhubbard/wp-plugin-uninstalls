#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_edw_position'
wp option delete '_edw_cache'
wp option delete '_edw_fontawesome'
wp option delete 'edw_show_list'
wp option delete 'edw_save_date_order'
wp option delete '_edw_holidays_dates'
wp option delete '_edw_mode'
wp option delete '_edw_max_days_outstock'
wp option delete '_edw_days_outstock'
wp option delete '_edw_disabled_days'
wp option delete '_edw_max_days_backorders'
wp option delete '_edw_days_backorders'
wp option delete '_edw_days'
wp option delete '_edw_max_days'
wp option delete '_edw_same_day'
wp option delete '_edw_max_hour'
wp option delete '_edw_relative_dates'
wp option delete '_edw_date_format_1_0'
wp option delete '_edw_date_format_1_1'
wp option delete '_edw_date_format_2_0'
wp option delete '_edw_date_format_2_1'
wp option delete '_edw_date_format_3_0'
wp option delete '_edw_date_format_3_1'
wp option delete '_edw_icon'
wp option delete 'estimated-delivery-newsletter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_disabled_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_disabled_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_disabled_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_disabled_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_max_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_max_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_max_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_max_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_days_outstock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_days_outstock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_days_outstock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_days_outstock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_max_days_outstock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_max_days_outstock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_max_days_outstock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_max_days_outstock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_days_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_days_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_days_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_days_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_max_days_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_max_days_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_max_days_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_max_days_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edw_overwrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edw_overwrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edw_overwrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edw_overwrite'"
