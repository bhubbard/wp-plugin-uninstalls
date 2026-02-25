#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmg_db_version'
wp option delete 'social-media-hastag'
wp option delete 'lightBoxType'
wp option delete 'youtube-chaneel-id'
wp option delete 'wpmg-filter-align'
wp option delete 'filter-wrapper-bg'
wp option delete 'filter-text-color'
wp option delete 'filter-bg-color'
wp option delete 'filter-border-color'
wp option delete 'act-filter-text-color'
wp option delete 'act-filter-bg-color'
wp option delete 'act-filter-border-color'
wp option delete 'paginate-text-color'
wp option delete 'paginate-bg-color'
wp option delete 'act-paginate-text-color'
wp option delete 'act-paginate-bg-color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dt_header_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dt_header_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dt_header_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dt_header_title'"
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
