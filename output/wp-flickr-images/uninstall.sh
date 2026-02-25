#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wp_flickr_key_api'
wp option delete '_wp_flickr_key_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_Flickr_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_Flickr_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_Flickr_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_Flickr_options'"
