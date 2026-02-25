#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wds_taxonomy_meta'
wp option delete 'wds_blog_tabs'
wp option delete 'wds_subsite_manager_role'
wp option delete 'wds_subsite_config_id'
wp option delete 'wds-free-install-date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'wds_settings_options'
wp option delete 'wds-features-viewed'
wp option delete 'active_sitewide_plugins'
wp option delete 'wds_checkup_options'
wp option delete 'wds_health_options'
wp option delete 'wds_sitewide_mode'
wp option delete 'wpmudev_apikey'
wp option delete 'wds_sitemap_dashboard'
wp option delete 'wpseo'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'wds_autolinks_options'
wp option delete 'wds_woocommerce_options'
wp option delete 'wds_breadcrumb_options'
wp option delete 'wds_robots_options'
wp option delete 'wdev-frash'

# Delete Transients
wp transient delete 'wds-settings-save-errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wds_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wds_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wds_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wds_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_opengraph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_opengraph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_opengraph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_opengraph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_autolinks-exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_autolinks-exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_autolinks-exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_autolinks-exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_trimmed_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_trimmed_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_trimmed_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_trimmed_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_ignored_checks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_ignored_checks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_ignored_checks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_ignored_checks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wds_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wds_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wds_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wds_primary_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wds_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wds_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wds_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wds_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vimeo_thumbnail_id-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_blip_thumbnail_id-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_blip_thumbnail_id-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_blip_thumbnail_id-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_blip_thumbnail_id-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wordpresstv_thumbnail_id-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_meta-robots-index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_meta-robots-index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_meta-robots-index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_meta-robots-index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_meta-robots-follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_meta-robots-follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_meta-robots-follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_meta-robots-follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wds_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wds_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wds_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wds_primary_category'"
