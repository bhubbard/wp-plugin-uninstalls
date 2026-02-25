#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpui_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpui_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpui_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpui_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpui_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpui_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpui_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpui_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpui_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpui_viewport_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpui_viewport_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpui_viewport_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpui_viewport_width'"
