#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urlslab-relres-def-img'
wp option delete 'urlslab'

# Delete Transients
wp transient delete 'urlslab_serp_queries_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_url_cache_%' OR option_name LIKE '_site_transient_url_cache_%'"
wp transient delete 'urlslab_optimize_web_vitals_table'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_urlslab-rate-limit-%' OR option_name LIKE '_site_transient_urlslab-rate-limit-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_urlslab-404-%' OR option_name LIKE '_site_transient_urlslab-404-%'"

# Clear Cron Jobs
wp cron event delete 'urlslab_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'excerpt'"
