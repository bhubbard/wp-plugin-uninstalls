#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_api_key'
wp option delete 'sc_gds_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autocomplete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autocomplete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autocomplete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autocomplete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgeoloc_coords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgeoloc_coords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgeoloc_coords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgeoloc_coords'"
