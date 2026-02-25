#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vigia_aiss_tip_dismissed'
wp option delete 'vigia_db_version'
wp option delete 'vigia_flush_rewrite'
wp option delete 'vigia_activation_notice'
wp option delete 'vigia_blocked_crawlers'
wp option delete 'vigia_robots_rules'
wp option delete 'vigia_email_settings'
wp option delete 'vigia_llms_settings'
wp option delete 'vigia_settings'
wp option delete 'vigia_custom_crawlers'
wp option delete 'vigia_blocked_items'
wp option delete 'vigia_markdown_settings'

# Clear Cron Jobs
wp cron event delete 'vigia_send_email_alerts'
wp cron event delete 'vigia_daily_cleanup'
wp cron event delete 'vigia_llms_regenerate'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_noindex'"
