#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jinx_roles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jinx_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jinx_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jinx_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jinx_code'"
