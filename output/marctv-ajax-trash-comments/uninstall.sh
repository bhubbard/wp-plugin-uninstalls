#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'marctv-moderation-text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_members_only'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_count' OR option_name LIKE '_site_transient_%_count'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reported'"
