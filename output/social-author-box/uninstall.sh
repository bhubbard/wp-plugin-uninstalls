#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_author_box_settings'
wp option delete 'social_authorbox_facebook'
wp option delete 'social_authorbox_twitter'
wp option delete 'social_authorbox_googleplus'
wp option delete 'social_authorbox_linkedin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_desc'"
