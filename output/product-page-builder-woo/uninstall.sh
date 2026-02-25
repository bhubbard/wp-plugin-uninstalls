#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpb-replace-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpb-replace-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpb-replace-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpb-replace-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpb-which-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpb-which-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpb-which-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpb-which-page'"
