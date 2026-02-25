#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nmpc%'"
wp option delete 'nm_pr_list'
wp option delete 'nm_setting'

# Delete Transients
wp transient delete '_xiamitoken'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_song%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_song%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_song%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_song%'"
