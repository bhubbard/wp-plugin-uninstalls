#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice' OR option_name LIKE '_site_transient_%_notice'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_disable'"
