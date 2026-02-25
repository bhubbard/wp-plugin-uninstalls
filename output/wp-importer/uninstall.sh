#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_importer_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_importer_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_importer_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_importer_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
