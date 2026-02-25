#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'integrator_url'
wp option delete 'integrator_apisecret'
wp option delete 'integrator_apiusername'
wp option delete 'integrator_apipassword'
wp option delete 'integrator_cnxnid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'integrator_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vars'"
