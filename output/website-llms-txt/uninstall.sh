#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llms_local_log'
wp option delete 'llms_generator_settings'
wp option delete 'llms_crawler_options'
wp option delete 'llms_site_log_enabled_status'
wp option delete 'woocommerce_currency'
wp option delete 'rank_math_description'

# Clear Cron Jobs
wp cron event delete 'llms_update_llms_file_cron'
wp cron event delete 'llms_scheduled_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_ai_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_ai_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_ai_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_ai_banner_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llmstxt_page_md'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llmstxt_page_md'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llmstxt_page_md'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llmstxt_page_md'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_md_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_md_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_md_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_md_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llmstxt_custom_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llmstxt_custom_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llmstxt_custom_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llmstxt_custom_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
