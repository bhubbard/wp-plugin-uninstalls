#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eatransform_sns_last_debug'
wp option delete 'eatransform_sns_publisher_settings'
wp option delete 'wp_twitter_auto_poster_settings'
wp option delete 'wp_sns_auto_poster_settings'

# Delete Transients
wp transient delete 'eatransform_sns_error'
wp transient delete 'eatransform_sns_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eatransform_sns_addon_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eatransform_sns_addon_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eatransform_sns_addon_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eatransform_sns_addon_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eatransform_sns_posted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eatransform_sns_posted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eatransform_sns_posted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eatransform_sns_posted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eatransform_sns_posted_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eatransform_sns_posted_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eatransform_sns_posted_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eatransform_sns_posted_at'"
