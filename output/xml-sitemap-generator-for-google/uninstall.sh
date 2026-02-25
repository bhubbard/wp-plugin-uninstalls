#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trp_settings'
wp option delete 'sgg_image-sitemap_latest_mod_time'
wp option delete 'sgg_image-sitemap_latest_post_id'
wp option delete 'sgg_video-sitemap_latest_mod_time'
wp option delete 'sgg_video-sitemap_latest_post_id'
wp option delete 'sgg_installation_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sgg_disable_notice_%'"
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'polylang'
wp option delete 'sgg_youtube_data'
wp option delete 'sgg_video_api_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_chunks' OR option_name LIKE '_site_transient_%_chunks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_time' OR option_name LIKE '_site_transient_%_time'"
wp transient delete 'sgg_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'xml_sitemap_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sitemap_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sitemap_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sitemap_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sitemap_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sitemap_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sitemap_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sitemap_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sitemap_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sitemap_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sitemap_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sitemap_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sitemap_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-builder-preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_title'"
