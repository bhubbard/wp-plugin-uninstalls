#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bos_api_version'
wp option delete 'badgeos_settings'

# Delete Transients
wp transient delete 'non_ob_conversion_progress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_restapi_apikey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_restapi_apikey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_restapi_apikey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_restapi_apikey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_restapi_permission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_restapi_permission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_restapi_permission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_restapi_permission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_restapi_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_restapi_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_restapi_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_restapi_domain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_restapi_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_restapi_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_restapi_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_restapi_user'"
