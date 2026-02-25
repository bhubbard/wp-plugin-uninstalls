#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tacwp_postmgr_frbackup'
wp option delete '_seoba_findrepviewed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accelerate_posthits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accelerate_posthits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accelerate_posthits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accelerate_posthits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accelerate_postlasthit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accelerate_postlasthit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accelerate_postlasthit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accelerate_postlasthit'"
