#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lws_slide_height'
wp option delete 'lws_delay'
wp option delete 'lws_transition'
wp option delete 'lws_animation'
wp option delete 'lws_controls'
wp option delete 'lws_pagination'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_link'"
