#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invelity_my_gls_export_options'

# Delete Transients
wp transient delete 'invelity-my-gls-ad'
wp transient delete 'invelity-plugins-description'
wp transient delete 'invelity-plugins-ad'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invelity_gls_parcel_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invelity_gls_parcel_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invelity_gls_parcel_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invelity_gls_parcel_number'"
