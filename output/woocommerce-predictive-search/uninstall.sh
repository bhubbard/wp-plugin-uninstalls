#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'woocommerce_search_result_grid_container_class'
wp option delete 'wc_predictive_search_just_confirm'
wp option delete 'woocommerce_search_exclude_products'
wp option delete 'woocommerce_search_exclude_posts'
wp option delete 'woocommerce_search_exclude_pages'
wp option delete 'woocommerce_search_schedule_time_sync_data'
wp option delete 'wc_predictive_search_had_sync_posts_data'
wp option delete 'wc_predictive_search_synced_posts_data'
wp option delete 'wc_predictive_search_auto_synced_completed_time'
wp option delete 'wc_predictive_search_manual_synced_completed_time'
wp option delete 'wc_predictive_search_auto_synced_products_successed'
wp option delete 'wc_predictive_search_auto_synced_posts_successed'
wp option delete 'wc_predictive_search_auto_synced_pages_successed'
wp option delete 'woocommerce_search_box_text'
wp option delete 'wc_predictive_search_lite_version'
wp option delete 'wc_predictive_search_just_installed'
wp option delete 'wc_ps_upgraded_to_new_sync_data'
wp option delete 'woocommerce_search_result_items'
wp option delete 'woocommerce_search_is_debug'
wp option delete 'woocommerce_search_result_display_type'
wp option delete 'predictive_search_mode'
wp option delete 'woocommerce_search_remove_special_character'
wp option delete 'woocommerce_search_special_characters'
wp option delete 'woocommerce_search_replace_special_character'
wp option delete 'woocommerce_search_allow_auto_sync_data'
wp option delete 'wc_predictive_search_auto_synced_full_data_successed'
wp option delete 'wc_predictive_search_auto_synced_posts_table_successed'
wp option delete 'wc_predictive_search_auto_synced_skus_successed'
wp option delete 'woocommerce_search_schedule_success_recipients'
wp option delete 'woocommerce_search_schedule_error_recipients'
wp option delete 'wc_predictive_search_auto_synced_product_categories_successed'
wp option delete 'wc_predictive_search_auto_synced_product_tags_successed'
wp option delete 'wc_predictive_search_auto_synced_relationships_successed'
wp option delete 'wc_predictive_search_sidebar_template_settings'
wp option delete 'wc_predictive_search_header_template_settings'
wp option delete 'woocommerce_search_exclude_out_stock'
wp option delete 'woocommerce_search_sku_enable'
wp option delete 'woocommerce_search_price_enable'
wp option delete 'woocommerce_search_addtocart_enable'
wp option delete 'woocommerce_search_categories_enable'
wp option delete 'woocommerce_search_tags_enable'
wp option delete 'woocommerce_search_text_lenght'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_search_cache_timeout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes'"
wp option delete 'woocommerce_search_page_id'
wp option delete 'woocommerce_search_exclude_p_categories'
wp option delete 'woocommerce_search_exclude_p_tags'
wp option delete 'woocommerce_search_focus_enable'
wp option delete 'woocommerce_search_focus_plugin'
wp option delete 'woocommerce_search_product_items'
wp option delete 'woocommerce_search_p_sku_items'
wp option delete 'woocommerce_search_p_cat_items'
wp option delete 'woocommerce_search_p_tag_items'
wp option delete 'woocommerce_search_post_items'
wp option delete 'woocommerce_search_page_items'
wp option delete 'woocommerce_search_character_max'
wp option delete 'woocommerce_search_width'
wp option delete 'woocommerce_search_padding_top'
wp option delete 'woocommerce_search_padding_bottom'
wp option delete 'woocommerce_search_padding_left'
wp option delete 'woocommerce_search_padding_right'
wp option delete 'woocommerce_search_custom_style'
wp option delete 'woocommerce_search_global_search'
wp option delete 'woocommerce_search_enable_google_analytic'
wp option delete 'woocommerce_search_google_analytic_id'
wp option delete 'woocommerce_search_google_analytic_query_parameter'
wp option delete 'wc_predictive_search_synched_data'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"
wp transient delete 'wc_predictive_search_starting_manual_sync'

# Clear Cron Jobs
wp cron event delete 'wc_predictive_search_sync_data_scheduled_jobs'
wp cron event delete 'wc_predictive_search_auto_sync_products'
wp cron event delete 'wc_predictive_search_auto_sync_detect_error'
wp cron event delete 'wc_predictive_search_auto_sync_product_skus'
wp cron event delete 'wc_predictive_search_auto_sync_posts'
wp cron event delete 'wc_predictive_search_auto_sync_product_tags'
wp cron event delete 'wc_predictive_search_auto_sync_pages'
wp cron event delete 'wc_predictive_search_auto_end_sync'
wp cron event delete 'wc_predictive_search_auto_sync_product_categories'
wp cron event delete 'wc_predictive_search_auto_sync_relationships'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
