#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'octagon_icon_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-has-cached'"
wp option delete 'octagon_custom_sidebar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_options%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_post'"
