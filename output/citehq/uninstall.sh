#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'citehq_options'
wp option delete 'citehq_activated'
wp option delete 'citehq_notices'

# Delete Transients
wp transient delete 'citehq_content'
wp transient delete 'citehq_content_full'

# Clear Cron Jobs
wp cron event delete 'citehq_regenerate_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_citehq_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_citehq_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_citehq_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_citehq_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_citehq_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_citehq_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_citehq_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_citehq_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
