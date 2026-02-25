#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recrm_estate_props'
wp option delete 'recrm_agent_props'
wp option delete 'recrm_options'
wp option delete 'recrm_estate_types'

# Clear Cron Jobs
wp cron event delete 'recrm_cron_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'recrm_hash_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'recrm_hash_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'recrm_hash_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recrm_hash_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'recrm_gallery_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'recrm_gallery_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'recrm_gallery_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recrm_gallery_%'"
