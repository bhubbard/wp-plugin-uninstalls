#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'be_photographer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'be_photographer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'be_photographer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'be_photographer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'be_photographer_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'be_photographer_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'be_photographer_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'be_photographer_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'be_photographer_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'be_photographer_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'be_photographer_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'be_photographer_url'"
