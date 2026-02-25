-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_starting_points', 'bp_close_bets', 'bp_min_stake', 'bp_max_stake', 'bp_sport_title_bg_color', 'bp_sport_title_text_color', 'bp_sport_container_bg_color', 'bp_event_title_bg_color', 'bp_event_title_text_color', 'bp_event_container_bg_color', 'bp_bet_event_title_bg_color', 'bp_bet_event_title_text_color', 'bp_cat_title_bg_color', 'bp_cat_title_text_color', 'bp_cat_container_bg_color', 'bp_button_bg_color', 'bp_button_text_color', 'bp_featured_heading_bg_color', 'bp_featured_heading_text_color', 'bp_featured_name_bg_color', 'bp_featured_name_text_color', 'bp_featured_button_bg_color', 'bp_featured_button_text_color', 'bp_lb_table_text_color', 'bp_lb_heading_bg_color', 'bp_lb_odd_bg_color', 'bp_lb_even_bg_color', 'bp_slip_heading_bg_color', 'bp_slip_heading_text_color', 'bp_slip_row_bg_color', 'bp_slip_row_text_color', 'bp_slip_subrow_bg_color', 'bp_slip_subrow_text_color', 'bp_one_win_per_cat', 'bp_default_odd_type', 'bp_only_int_stakes', 'bp_paypal_mail', 'bp_max_points_to_buy', 'bp_max_allowed_points', 'bp_paypal_url_fail', 'bp_paypal_token', 'bp_paypal_sandbox', 'bp_paypal_success_message', 'bp_paypal_error_message', 'bp_paypal_txn_ids', 'bp_db_version', 'bp_pages_inserted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_points', 'bp_points_buyed', 'bp_odd_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_points', 'bp_points_buyed', 'bp_odd_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_points', 'bp_points_buyed', 'bp_odd_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_points', 'bp_points_buyed', 'bp_odd_type');

