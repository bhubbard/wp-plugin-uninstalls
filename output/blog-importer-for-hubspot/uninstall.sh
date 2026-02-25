#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bifh_last_import'
wp option delete 'bifh_last_cron_import'

# Clear Cron Jobs
wp cron event delete 'bifh_cron_import_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_import_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_import_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_import_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_import_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_featured_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_featured_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_featured_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_featured_image_url'"
