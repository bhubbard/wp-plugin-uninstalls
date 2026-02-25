#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'madquick_ppg_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_madquick_ppg_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_madquick_ppg_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_madquick_ppg_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_madquick_ppg_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_madquick_ppg_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_madquick_ppg_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_madquick_ppg_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_madquick_ppg_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_madquick_ppg_created_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_madquick_ppg_created_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_madquick_ppg_created_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_madquick_ppg_created_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_madquick_ppg_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_madquick_ppg_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_madquick_ppg_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_madquick_ppg_form_data'"
