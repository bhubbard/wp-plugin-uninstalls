#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woof_version'
wp option delete 'woof_alert'
wp option delete 'woof_settings'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woof_show_count'
wp option delete 'woof_notices'
wp option delete 'woof_show_count_dynamic'
wp option delete 'woof_hide_dynamic_empty_pos'
wp option delete 'woof_first_init'
wp option delete 'woof_show_author_search'
wp option delete 'woof_front_builder_demo'
wp option delete 'woof_checkboxes_slide'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woof_stat_updated_table'
wp option delete 'woof_stat_start_data'
wp option delete 'woof_reset_btn_txt'
wp option delete 'woof_cron_limit_do'
wp option delete 'woof_try_ajax'
wp option delete 'woof_show_count_dynamic_turbo_mode'
wp option delete 'woof_show_count_turbo_mode'
wp option delete 'woof_hide_dynamic_empty_pos_turbo_mode'
wp option delete 'woof_set_automatically'
wp option delete 'woof_autosubmit'
wp option delete 'woof_hide_red_top_panel'
wp option delete 'woof_sort_terms_checked'
wp option delete 'woof_filter_btn_txt'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wppp_default_ppp'
wp option delete 'woof_manage_rate_alert'

# Delete Transients
wp transient delete 'woof_min_max_prices'
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'woof_cache_count_data_auto_clean'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woof_user_messenger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woof_user_messenger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woof_user_messenger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woof_user_messenger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woof_user_search_query'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woof_user_search_query'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woof_user_search_query'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woof_user_search_query'"
