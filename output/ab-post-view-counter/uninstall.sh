#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ab-post-radio'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ab_postview_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ab_postview_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ab_postview_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ab_postview_views'"
