#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
