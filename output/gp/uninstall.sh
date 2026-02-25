#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gp_options'
wp option delete 'gp_app_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_token'"
