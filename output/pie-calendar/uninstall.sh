#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'piecal_hide_onboarding_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piecal_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piecal_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piecal_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piecal_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piecal_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piecal_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piecal_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piecal_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piecal_is_allday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piecal_is_allday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piecal_is_allday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piecal_is_allday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piecal_is_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piecal_is_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piecal_is_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piecal_is_event'"
