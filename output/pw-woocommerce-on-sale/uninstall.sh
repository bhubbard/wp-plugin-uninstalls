#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'begin_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'begin_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'begin_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'begin_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'begin_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'begin_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'begin_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'begin_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_percentage'"
