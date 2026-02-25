#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_archiveo_session_%' OR option_name LIKE '_site_transient_archiveo_session_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_archiveo_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_archiveo_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_archiveo_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_archiveo_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_archiveo_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_archiveo_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_archiveo_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_archiveo_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_archiveo_wayback_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_archiveo_wayback_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_archiveo_wayback_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_archiveo_wayback_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_archiveo_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_archiveo_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_archiveo_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_archiveo_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbp_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbp_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbp_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbp_created'"
