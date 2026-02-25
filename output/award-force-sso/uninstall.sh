#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'award-force-sso-installation-domain'
wp option delete 'award-force-sso-api-key'
wp option delete 'award-force-access-token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'award-force-slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'award-force-slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'award-force-slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'award-force-slug'"
