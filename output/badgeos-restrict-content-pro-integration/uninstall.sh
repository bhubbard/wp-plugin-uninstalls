#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'wn_bosrcp_license_key'
wp option delete 'badgeos_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_rcp_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_rcp_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_rcp_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_rcp_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_rcp_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_rcp_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_rcp_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_rcp_object_id'"
