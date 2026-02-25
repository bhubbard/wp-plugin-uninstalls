#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pt_cs_modifiable'
wp option delete 'pt_cs_sidebars'
wp option delete 'sidebars_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pt_cs_replacements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pt_cs_replacements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pt_cs_replacements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pt_cs_replacements'"
