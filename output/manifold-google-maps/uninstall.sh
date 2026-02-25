#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'manifold_google_maps_googlekey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_googlekey'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-weblink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-weblink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-weblink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-weblink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manifold-google-maps-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manifold-google-maps-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manifold-google-maps-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manifold-google-maps-description'"
