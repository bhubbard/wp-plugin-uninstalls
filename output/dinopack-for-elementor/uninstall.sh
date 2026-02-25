#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dinopack_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dinopack_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dinopack_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dinopack_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dinopack_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dinopack_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dinopack_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dinopack_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dinopack_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dinopack_focus_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dinopack_focus_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dinopack_focus_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dinopack_focus_keywords'"
