#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbg_cpt_slug'
wp option delete 'wbgp_search_dad_list'
wp option delete 'wbg_general_settings'
wp option delete 'wbg_general_styles'
wp option delete 'wbg_core_settings'
wp option delete 'wbg_search_settings'
wp option delete 'wbg_search_styles'
wp option delete 'wbg_detail_settings'
wp option delete 'wbg_single_styles'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wbg_flush_rewrite_rules_flag'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbgp_img_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbgp_img_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbgp_img_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbgp_img_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_editorial_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_editorial_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_editorial_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_editorial_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_best_sellers_rank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_best_sellers_rank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_best_sellers_rank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_best_sellers_rank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_sub_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_sub_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_sub_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_sub_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_download_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_download_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_download_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_download_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbgp_buy_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbgp_buy_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbgp_buy_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbgp_buy_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_co_publisher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_co_publisher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_co_publisher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_co_publisher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_published_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_published_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_published_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_published_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_isbn_13'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_isbn_13'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_isbn_13'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_isbn_13'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_dimension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_dimension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_dimension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_dimension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbgp_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbgp_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbgp_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbgp_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbgp_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbgp_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbgp_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbgp_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_cost_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_cost_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_cost_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_cost_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_is_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_is_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_is_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_is_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_item_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_item_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_item_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_item_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_edition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_edition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_edition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_edition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_illustrator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_illustrator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_illustrator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_illustrator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_translator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_translator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_translator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_translator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_wc_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_wc_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_wc_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_wc_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_narrator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_narrator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_narrator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_narrator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbg_listening_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbg_listening_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbg_listening_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbg_listening_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcr3_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcr3_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcr3_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcr3_review_rating'"
