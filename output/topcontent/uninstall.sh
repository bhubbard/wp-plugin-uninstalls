#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'topcont-api-key'
wp option delete 'topcont-api-url'
wp option delete 'topcont-first-h1'
wp option delete '_topcont_key_error'
wp option delete 'topcont-draft'
wp option delete 'topcont-featured-image'
wp option delete 'topcont-author'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topcont_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topcont_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topcont_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topcont_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
