#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dearti_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dearti_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dearti_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dearti_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dearti_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dearti_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dearti_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dearti_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dearti_day_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dearti_day_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dearti_day_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dearti_day_month'"
