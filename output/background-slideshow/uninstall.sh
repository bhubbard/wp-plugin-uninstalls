#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slide_animation'
wp option delete 'slide_timeout'
wp option delete 'slide_link'
wp option delete 'slide_blog'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bg_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bg_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bg_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bg_slider'"
