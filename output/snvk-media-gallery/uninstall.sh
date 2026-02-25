#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_on'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snv_mediagallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snv_mediagallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snv_mediagallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snv_mediagallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snv_mediatitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snv_mediatitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snv_mediatitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snv_mediatitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snv_mediaurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snv_mediaurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snv_mediaurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snv_mediaurl'"
