#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'JDL_login'
wp option delete 'JDL_idr'
wp option delete 'JDL_idl'
wp option delete 'JDL_pass'
wp option delete 'JDL_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idr'"
