#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'can_attach_admin_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canonical_url'"
