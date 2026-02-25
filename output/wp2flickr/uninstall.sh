#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w2f_token'
wp option delete 'w2f_user'
wp option delete 'w2f_flickr_URL'
wp option delete 'w2f_flickr_is_public'
wp option delete 'w2f_flickr_is_friend'
wp option delete 'w2f_flickr_is_family'
wp option delete 'w2f_sets'
wp option delete 'w2f_groups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
