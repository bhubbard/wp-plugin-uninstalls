#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixgridder_hide_donate'
wp option delete 'pixgridder_array_rules_'
wp option delete 'pixgridder_height_preview'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixBuilderDisable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixBuilderDisable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixBuilderDisable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixBuilderDisable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pixgridder_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pixgridder_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pixgridder_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pixgridder_content'"
