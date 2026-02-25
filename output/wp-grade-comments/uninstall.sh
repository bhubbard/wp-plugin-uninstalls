#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'olgc_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'olgc_grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'olgc_grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'olgc_grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'olgc_grade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'olgc_is_private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'olgc_is_private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'olgc_is_private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'olgc_is_private'"
