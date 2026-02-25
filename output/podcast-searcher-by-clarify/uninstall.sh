#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clarify_apikey'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_clarify-search-%' OR option_name LIKE '_site_transient_clarify-search-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarify_bundle_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarify_bundle_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarify_bundle_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarify_bundle_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clarify_track_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clarify_track_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clarify_track_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clarify_track_id'"
