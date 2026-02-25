#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sv_core_expert_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
