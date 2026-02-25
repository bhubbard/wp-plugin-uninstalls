#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_ua_cron_auction_status'
wp option delete 'woo_ua_cron_auction_status_number'
wp option delete 'woo_ua_auctions_bid_ajax_enable'
wp option delete 'woo_ua_auctions_bid_ajax_interval'
wp option delete 'woo_ua_show_auction_pages_shop'
wp option delete 'woo_ua_show_auction_pages_search'
wp option delete 'woo_ua_show_auction_pages_cat'
wp option delete 'woo_ua_show_auction_pages_tag'
wp option delete 'woo_ua_expired_auction_enabled'
wp option delete 'woo_ua_auctions_countdown_format'
wp option delete 'uwa_hide_compact_enable'
wp option delete 'woo_ua_auctions_private_message'
wp option delete 'woo_ua_auctions_bids_section_tab'
wp option delete 'woo_ua_auctions_watchlists'
wp option delete 'uwa_allow_owner_to_bid'
wp option delete 'uwa_allow_admin_to_bid'
wp option delete 'uwa_enable_bid_place_warning'
wp option delete 'uwa_login_register_msg_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woo_ua_auction_last_activity'
wp option delete 'woo_ua_auctions_bids_reviews_tab'
wp option delete 'woo_ua_cron_auction_email'
wp option delete 'woo_ua_cron_auction_no_process'
wp option delete 'woo_ua_auction_db_ver'
wp option delete 'woo_ua_auction_ver'
wp option delete 'woo_ua_cron_initiated'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'wc_price_num_decimals'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_bid_increment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_bid_increment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_bid_increment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_bid_increment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_product_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_product_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_product_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_product_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_opening_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_opening_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_opening_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_opening_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_lowest_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_lowest_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_lowest_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_lowest_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_current_bid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_current_bid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_current_bid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_current_bid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_current_bider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_current_bider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_current_bider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_current_bider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_max_bid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_max_bid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_max_bid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_max_bid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_max_current_bider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_max_current_bider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_max_current_bider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_max_current_bider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_bid_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_bid_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_bid_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_bid_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_started'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_started'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_started'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_started'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_has_started'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_has_started'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_has_started'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_has_started'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_closed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_closed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_closed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_closed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_fail_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_fail_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_fail_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_fail_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_payed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_payed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_payed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_payed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_buy_now'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_buy_now'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_buy_now'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_buy_now'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_winner_mail_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_winner_mail_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_winner_mail_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_winner_mail_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_watch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_watch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_watch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_watch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwa_pro_add_plugin_notice_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwa_pro_add_plugin_notice_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwa_pro_add_plugin_notice_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwa_pro_add_plugin_notice_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwa_disable_display_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwa_disable_display_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwa_disable_display_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwa_disable_display_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_ua_auction_win'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_ua_auction_win'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_ua_auction_win'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_ua_auction_win'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auction_current_bid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auction_current_bid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auction_current_bid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auction_current_bid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lottery_wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lottery_wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lottery_wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lottery_wpml_language'"
