#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdm_time_zone'
wp option delete 'wdm_currency'
wp option delete 'wdm_bidding_engines'
wp option delete 'payment_options_enabled'
wp option delete 'wdm_show_prvt_msg'
wp option delete 'wdm_auc_num_per_page'
wp option delete 'wdm_layout_style'
wp option delete 'wdm_login_page_url'
wp option delete 'wdm_wire_transfer'
wp option delete 'wdm_mailing_address'
wp option delete 'wdm_cash'
wp option delete 'wdm_users_login'
wp option delete 'wdm_account_mode'
wp option delete 'wdm_paypal_address'
wp option delete 'wdm_auction_email'
wp option delete 'wdm_auc_settings_data'
wp option delete 'wdm_auction_page_url'
wp option delete 'wdm_register_page_url'
wp option delete 'wdm_show_enddate_msg'
wp option delete 'wdm_show_timezone_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm-auth-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm-auth-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm-auth-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm-auth-key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_creation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_creation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_creation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_creation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wdm-image-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wdm-image-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wdm-image-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wdm-image-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_buy_it_now'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_buy_it_now'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_buy_it_now'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_buy_it_now'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm-main-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm-main-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm-main-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm-main-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_listing_ends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_listing_ends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_listing_ends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_listing_ends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_opening_bid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_opening_bid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_opening_bid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_opening_bid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_lowest_bid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_lowest_bid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_lowest_bid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_lowest_bid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_incremental_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_incremental_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_incremental_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_incremental_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_bidding_engine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_bidding_engine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_bidding_engine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_bidding_engine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_auction_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_auction_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_auction_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_auction_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_enable_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_enable_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_enable_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_enable_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current_auction_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current_auction_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current_auction_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current_auction_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auction_bought_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auction_bought_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auction_bought_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auction_bought_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_auction_buyer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_auction_buyer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_auction_buyer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_auction_buyer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auction_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auction_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auction_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auction_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_sent_imd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_sent_imd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_sent_imd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_sent_imd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_to_be_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_to_be_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_to_be_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_to_be_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_won_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_won_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_won_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_won_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_previous_bid_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_previous_bid_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_previous_bid_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_previous_bid_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_this_auction_winner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_this_auction_winner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_this_auction_winner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_this_auction_winner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_uwa_pro_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_uwa_pro_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_uwa_pro_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_uwa_pro_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdm_uwa_plugin_layout_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdm_uwa_plugin_layout_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdm_uwa_plugin_layout_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdm_uwa_plugin_layout_ignore_notice'"
