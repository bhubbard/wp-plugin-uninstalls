#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stwbpb_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_static_web_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_static_web_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_static_web_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_static_web_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_static_web_connections_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_static_web_connections_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_static_web_connections_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_static_web_connections_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_original_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_original_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_original_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_original_page'"
