#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpseo_dismiss_%'"
wp option delete 'rank-math-options-titles'
wp option delete 'wpseo_taxonomy_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_robots'"
wp option delete 'yoast_migrations_free'
wp option delete 'auto_update_plugins'
wp option delete 'wpseo_ms'
wp option delete 'wpseo_xml'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_permalinks'
wp option delete 'wpseo_rss'
wp option delete 'wpseo_internallinks'
wp option delete 'whip_dismiss_timestamp'
wp option delete 'wpseo_recalibration_beta_mailinglist_subscription'
wp option delete 'wpseo_ryte'
wp option delete 'wpseo_onpage'
wp option delete 'wpseo'
wp option delete 'wpseo_license_server_version'
wp option delete 'wpseo_social'
wp option delete 'wpseo_premium'
wp option delete 'rewrite_rules'
wp option delete 'wpseo_indexation'
wp option delete 'seo_woo_use_third_party_data'

# Delete Transients
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'wpseo_send_tracking_data_after_core_update'
wp cron event delete 'yoast_tracking'
wp cron event delete 'wpseo_hit_sitemap_index'
wp cron event delete 'wpseo_ryte_fetch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpseo_dismiss_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpseo_dismiss_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpseo_dismiss_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpseo_dismiss_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_profile_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_profile_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_profile_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_profile_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_pronouns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_pronouns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_pronouns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_pronouns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_content_analysis_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_content_analysis_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_content_analysis_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_content_analysis_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_keyword_analysis_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_keyword_analysis_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_keyword_analysis_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_keyword_analysis_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_inclusive_language_analysis_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_inclusive_language_analysis_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_inclusive_language_analysis_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_inclusive_language_analysis_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_meta-robots-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seop_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seop_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seop_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seop_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seop_kw_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seop_kw_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seop_kw_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seop_kw_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seop_kw_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seop_kw_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seop_kw_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seop_kw_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seop_kw_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seop_kw_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seop_kw_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seop_kw_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_post_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_post_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_post_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_post_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpseo_edit_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpseo_edit_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpseo_edit_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpseo_edit_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpseo-remove-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpseo-remove-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpseo-remove-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpseo-remove-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_settings_introduction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_settings_introduction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_settings_introduction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_settings_introduction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
