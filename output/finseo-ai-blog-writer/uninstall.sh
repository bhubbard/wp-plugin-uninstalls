#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'finseo_admin_notices'
wp option delete 'default_status'
wp option delete 'finseo_delete_data_on_uninstall'
wp option delete 'finseo_api_key'
wp option delete 'finseo_api_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'finseo_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'finseo_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'finseo_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'finseo_dismissed_%'"
