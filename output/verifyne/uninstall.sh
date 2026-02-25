#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vf_only_two_factor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verifyne_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verifyne_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verifyne_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verifyne_user_id'"
