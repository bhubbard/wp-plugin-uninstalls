#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_starting_points'
wp option delete 'bp_close_bets'
wp option delete 'bp_min_stake'
wp option delete 'bp_max_stake'
wp option delete 'bp_sport_title_bg_color'
wp option delete 'bp_sport_title_text_color'
wp option delete 'bp_sport_container_bg_color'
wp option delete 'bp_event_title_bg_color'
wp option delete 'bp_event_title_text_color'
wp option delete 'bp_event_container_bg_color'
wp option delete 'bp_bet_event_title_bg_color'
wp option delete 'bp_bet_event_title_text_color'
wp option delete 'bp_cat_title_bg_color'
wp option delete 'bp_cat_title_text_color'
wp option delete 'bp_cat_container_bg_color'
wp option delete 'bp_button_bg_color'
wp option delete 'bp_button_text_color'
wp option delete 'bp_featured_heading_bg_color'
wp option delete 'bp_featured_heading_text_color'
wp option delete 'bp_featured_name_bg_color'
wp option delete 'bp_featured_name_text_color'
wp option delete 'bp_featured_button_bg_color'
wp option delete 'bp_featured_button_text_color'
wp option delete 'bp_lb_table_text_color'
wp option delete 'bp_lb_heading_bg_color'
wp option delete 'bp_lb_odd_bg_color'
wp option delete 'bp_lb_even_bg_color'
wp option delete 'bp_slip_heading_bg_color'
wp option delete 'bp_slip_heading_text_color'
wp option delete 'bp_slip_row_bg_color'
wp option delete 'bp_slip_row_text_color'
wp option delete 'bp_slip_subrow_bg_color'
wp option delete 'bp_slip_subrow_text_color'
wp option delete 'bp_one_win_per_cat'
wp option delete 'bp_default_odd_type'
wp option delete 'bp_only_int_stakes'
wp option delete 'bp_paypal_mail'
wp option delete 'bp_max_points_to_buy'
wp option delete 'bp_max_allowed_points'
wp option delete 'bp_paypal_url_fail'
wp option delete 'bp_paypal_token'
wp option delete 'bp_paypal_sandbox'
wp option delete 'bp_paypal_success_message'
wp option delete 'bp_paypal_error_message'
wp option delete 'bp_paypal_txn_ids'
wp option delete 'bp_db_version'
wp option delete 'bp_pages_inserted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_points_buyed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_points_buyed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_points_buyed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_points_buyed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_odd_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_odd_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_odd_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_odd_type'"
