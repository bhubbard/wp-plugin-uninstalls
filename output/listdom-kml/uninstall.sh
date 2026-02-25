#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsdaddkml_installed_at'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_kml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_kml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_kml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_kml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsd_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsd_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsd_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsd_type'"
