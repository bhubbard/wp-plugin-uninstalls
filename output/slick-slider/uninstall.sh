#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slick-slider'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery_link_target'"
