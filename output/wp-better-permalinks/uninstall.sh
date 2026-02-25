#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbp_notice_hidden'
wp option delete 'wbp_settings'
wp option delete 'wbp_terms'
wp option delete 'wbp_posts'
wp option delete 'wbp_posts_redirects'
wp option delete 'wbp_terms_redirects'

# Delete Transients
wp transient delete 'wp_better_permalinks_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
