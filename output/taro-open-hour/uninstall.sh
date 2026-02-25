#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsoh_post_types'
wp option delete 'tsoh_place_post_type'
wp option delete 'tsoh_place_post_type_public'
wp option delete 'tsoh_place_post_types'
wp option delete 'tsoh_google_api_key'
wp option delete 'tsoh_default_time'
wp option delete 'tsoh_default_days'
wp option delete 'tsoh_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsoh_site_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsoh_site_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsoh_site_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsoh_site_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsoh_holiday_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsoh_holiday_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsoh_holiday_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsoh_holiday_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tsoh_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tsoh_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tsoh_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tsoh_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsoh_local_business_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsoh_local_business_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsoh_local_business_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsoh_local_business_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsoh_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsoh_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsoh_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsoh_access'"
