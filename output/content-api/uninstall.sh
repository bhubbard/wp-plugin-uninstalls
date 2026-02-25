#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_api_options_polyplugins'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'content_api_last_accessed_polyplugins'

# Delete Transients
wp transient delete 'content_api_attributes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
