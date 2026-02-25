#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'about-post-author-background-color'
wp option delete 'about-post-author-text-color'
wp option delete 'about-post-author-font-size'
wp option delete 'about-post-author-font-family'
wp option delete 'about-post-author-border-style'
wp option delete 'about-post-author-padding'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram'"
