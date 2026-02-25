#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raptive_seo_sync_state'
wp option delete 'raptive_seo_auth_token'
wp option delete 'raptive_seo_auth_expires'
wp option delete 'wpseo-premium-redirects-base'
wp option delete 'raptive_seo_version'

# Clear Cron Jobs
wp cron event delete 'raptive_seo_retry_send_post'
wp cron event delete 'raptive_seo_run_batch'
wp cron event delete 'raptive_seo_daily_redirects'
wp cron event delete 'raptive_seo_daily_log_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_linkdex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_content_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
