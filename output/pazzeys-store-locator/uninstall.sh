#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pazzey_google_maps_api_key'

# Delete Transients
wp transient delete 'pazzey_import_errors_report'
wp transient delete 'pazzey_import_data'
wp transient delete 'pazzey_import_filename'
wp transient delete 'pazzey_import_results'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pazzey_postal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pazzey_postal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pazzey_postal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pazzey_postal'"
