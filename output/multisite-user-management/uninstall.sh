#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msum_default_user_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msum_has_caps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msum_has_caps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msum_has_caps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msum_has_caps'"
