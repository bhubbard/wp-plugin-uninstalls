#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_ads_addotionals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_ads_addotionals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_ads_addotionals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_ads_addotionals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_easy_ads_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_easy_ads_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_easy_ads_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_easy_ads_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_easy_ads_taxonomy_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_easy_ads_taxonomy_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_easy_ads_taxonomy_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_easy_ads_taxonomy_custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_easy_ads_date_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_easy_ads_date_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_easy_ads_date_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_easy_ads_date_custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_ads_manager_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_ads_manager_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_ads_manager_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_ads_manager_views_count'"
