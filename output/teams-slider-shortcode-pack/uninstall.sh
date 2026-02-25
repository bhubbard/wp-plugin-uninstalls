#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google_plus_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google_plus_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google_plus_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google_plus_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin_link'"
