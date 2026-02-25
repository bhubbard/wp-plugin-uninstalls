#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bw_bmcs'
wp option delete 'bw_bmts'
wp option delete 'bw_scheduled'

# Clear Cron Jobs
wp cron event delete 'oik_batchmove_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_sitemap-include'"
