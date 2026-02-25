#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plx_portal_web_content_replacements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plx_portal_web_content_replacements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plx_portal_web_content_replacements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plx_portal_web_content_replacements'"
