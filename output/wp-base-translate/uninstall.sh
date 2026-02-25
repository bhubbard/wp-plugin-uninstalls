#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_language'"
