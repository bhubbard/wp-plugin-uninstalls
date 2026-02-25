#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%any' OR option_name LIKE '_site_transient_%any'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'components_overview_posts_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'components_overview_posts_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'components_overview_posts_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'components_overview_posts_per_page'"
