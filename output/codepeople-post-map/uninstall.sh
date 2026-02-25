#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'cpm_config'
wp option delete 'cpm_load_resources_in_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpm_map'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpm_map'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpm_map'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpm_map'"
