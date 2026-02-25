#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pts_featured_post_types_settings'
wp option delete 'pts_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pts_featured_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pts_featured_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pts_featured_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pts_featured_post'"
