#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wadmw_options'
wp option delete 'phototools_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wadmw_workcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wadmw_workcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wadmw_workcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wadmw_workcode'"
