#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%valid_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%invalid_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%expected_versions'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_type_singular_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_type_singular_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_type_singular_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_type_singular_name'"
