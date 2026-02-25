#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seerox_wpmftm_activated'
wp option delete 'seerox_wpmftm_deactivated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_residential_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_residential_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_residential_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_residential_type'"
