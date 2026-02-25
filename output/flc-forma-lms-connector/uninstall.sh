#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flc_version'
wp option delete 'flc_address'
wp option delete 'flc_api_key'
wp option delete 'flc_api_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sso_key'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
