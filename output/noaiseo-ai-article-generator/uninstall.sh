#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noai_has_settings'
wp option delete 'noai_site_name'
wp option delete 'noai_site_topic'
wp option delete 'noai_api_key'
wp option delete 'noai_site_color'
wp option delete 'noai_bg_color'
wp option delete 'noai_site_category'
wp option delete 'noai_site_slug'
wp option delete 'noai_last_settings_push'
wp option delete 'noai_last_article_imported'
wp option delete 'noai_articles_remaining'
wp option delete 'noai_ai_next_generate_at'
wp option delete 'noai_ai_import_at'
wp option delete 'noai_ai_download_at'

# Delete Transients
wp transient delete 'noai_chart_data'

# Clear Cron Jobs
wp cron event delete 'noai_ai_beacon_event'
wp cron event delete 'noai_ai_generate_job'
wp cron event delete 'noai_ai_fetch_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noai_article_jsonld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noai_article_jsonld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noai_article_jsonld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noai_article_jsonld'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_secondary_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_secondary_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_secondary_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_secondary_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noai_article_folder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noai_article_folder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noai_article_folder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noai_article_folder'"
