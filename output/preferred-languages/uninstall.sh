#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preferred_languages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preferred_languages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preferred_languages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preferred_languages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preferred_languages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
