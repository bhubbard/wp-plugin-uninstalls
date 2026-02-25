#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpws_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpws_has_authorship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpws_has_authorship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpws_has_authorship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpws_has_authorship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpws_authorship_requested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpws_authorship_requested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpws_authorship_requested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpws_authorship_requested'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'owner'"
