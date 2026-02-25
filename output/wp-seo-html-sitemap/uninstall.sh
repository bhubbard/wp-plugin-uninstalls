#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpseosms'
wp option delete 'wpseo_xml'
wp option delete 'wpseo_taxonomy_meta'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_redirect'"
