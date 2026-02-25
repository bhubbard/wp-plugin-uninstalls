#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mtm_admin_notices'
wp option delete 'mtm_version'
wp option delete 'mtm_data'
wp option delete 'mtm_custom'
wp option delete 'mtm_shiny_update_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mtm_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mtm_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mtm_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mtm_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mtm_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mtm_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mtm_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mtm_data'"
