#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brtpmj_url'
wp option delete 'brtpmj_bu_displayname'
wp option delete 'brtpmj_bu_identifyingname'
wp option delete 'brtpmj_bu_numberofreviews'
wp option delete 'brtpmj_bu_score'
wp option delete 'brtpmj_bu_profileimageurl'
wp option delete 'brtpmj_bu_stars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviewDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviewDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviewDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviewDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cimage'"
