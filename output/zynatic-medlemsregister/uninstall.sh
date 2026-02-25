#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zynaau_options'
wp option delete 'zynatic_authentication_option_name'
wp option delete 'zynatic_medlemsregister_option_name'
wp option delete 'zynamr_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ZynaticID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ZynaticID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ZynaticID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ZynaticID'"
