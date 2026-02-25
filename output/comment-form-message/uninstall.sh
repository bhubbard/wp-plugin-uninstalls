#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcci_version'
wp option delete 'wpcci_just_activated'
wp option delete 'abd_libs_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_empty_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_empty_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_empty_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_empty_string'"
