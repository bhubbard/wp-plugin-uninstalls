#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooct_settings'
wp option delete 'wooct_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wooct_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wooct_localization_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_time_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_time_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_time_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_time_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_time_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_time_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_time_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_time_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_text_above'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_text_above'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_text_above'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_text_above'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_text_under'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_text_under'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_text_under'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_text_under'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooct_text_ended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooct_text_ended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooct_text_ended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooct_text_ended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
