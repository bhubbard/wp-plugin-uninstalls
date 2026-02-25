#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pin_cta_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_facebook_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_facebook_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_facebook_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_facebook_image'"
