#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_sitemap_options'
wp option delete 'vo3da_ping_results'
wp option delete 'vo3da_robots_options'
wp option delete 'attachment_sitemap_items'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sitemap_items'"
wp option delete 'home_sitemap_items'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_excludeurl'"
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'seo_ultimate_module_meta'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prioriti'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prioriti'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prioriti'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prioriti'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frequencies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frequencies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frequencies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frequencies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'excludeurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'excludeurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'excludeurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'excludeurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_su_meta_robots_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_su_meta_robots_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_su_meta_robots_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_su_meta_robots_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_last_mod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_last_mod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_last_mod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_last_mod'"
