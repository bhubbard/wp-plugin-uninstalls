#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acq_modifiable'
wp option delete 'acq_sidebars'
wp option delete 'sidebars_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acq_replacements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acq_replacements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acq_replacements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acq_replacements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
