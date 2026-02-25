#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pap_active_time'
wp option delete 'pap_review_dismiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pap_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pap_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pap_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pap_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Affiliate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Affiliate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Affiliate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Affiliate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Visitor ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Visitor ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Visitor ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Visitor ID'"
