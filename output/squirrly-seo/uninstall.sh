#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'trp_settings'
wp option delete 'wpseo_social'
wp option delete 'wpseo_titles'
wp option delete 'wpseo'
wp option delete 'aioseo_options'
wp option delete 'rank-math-options-general'
wp option delete 'rank-math-options-titles'
wp option delete 'autodescription-site-settings'
wp option delete '_psp_options'
wp option delete 'seopress_social_option_name'
wp option delete 'seopress_google_analytics_option_name'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'seopress_titles_option_name'
wp option delete 'sq_indexnow_log'
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete 'sq_checkin'
wp transient delete 'sq_stats'
wp transient delete 'sq_briefcase_stats'
wp transient delete 'sq_activate'
wp transient delete 'sq_import'
wp transient delete 'sq_auditpage_all'
wp transient delete 'sq_innerlinks_suggestion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sq_auditpage_%' OR option_name LIKE '_site_transient_sq_auditpage_%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'sq_processPing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_image_downloaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_image_downloaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_image_downloaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_image_downloaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_sla'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_sla'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_sla'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_sla'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sq_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sq_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sq_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sq_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_oxygenberg_full_page_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_oxygenberg_full_page_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_oxygenberg_full_page_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_oxygenberg_full_page_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_woocommerce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_woocommerce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_woocommerce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_woocommerce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_jsonld_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_jsonld_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_jsonld_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_jsonld_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_jsonld_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_jsonld_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_jsonld_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_jsonld_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_pixel_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_pixel_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_pixel_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_pixel_custom'"
