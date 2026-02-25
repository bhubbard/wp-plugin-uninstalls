#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'karma_by_kadar__song_id'

# Delete Transients
wp transient delete 'karma_by_kadar__rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'karma_by_kadar__rating_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'karma_by_kadar__rating_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'karma_by_kadar__rating_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'karma_by_kadar__rating_dismissed'"
