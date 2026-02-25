#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publish_mu_setttings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publish_mu_site_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publish_mu_site_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publish_mu_site_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publish_mu_site_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'publish_mu_site_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'publish_mu_site_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'publish_mu_site_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'publish_mu_site_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
