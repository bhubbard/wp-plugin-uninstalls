#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kdmfi_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kdmfi_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kdmfi_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kdmfi_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kdmfi_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_kdmfi_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_kdmfi_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_kdmfi_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kdmfi_%'"
