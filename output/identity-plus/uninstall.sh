#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'identity_plus_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'identity-plus/%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'identity-plus-anonymous-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'identity-plus-anonymous-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'identity-plus-anonymous-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'identity-plus-anonymous-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'identity-plus-intrusion-reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'identity-plus-intrusion-reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'identity-plus-intrusion-reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'identity-plus-intrusion-reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'identity-plus-bound'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'identity-plus-bound'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'identity-plus-bound'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'identity-plus-bound'"
