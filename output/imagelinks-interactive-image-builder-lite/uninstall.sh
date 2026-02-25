#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imagelinks_db_version'
wp option delete 'imagelinks_activated'
wp option delete 'imagelinks_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imgl-meta-imagelinks-cfg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imgl-meta-imagelinks-cfg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imgl-meta-imagelinks-cfg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imgl-meta-imagelinks-cfg'"
