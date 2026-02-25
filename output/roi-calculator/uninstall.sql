-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('roi_title_font', 'roi_title_color', 'roi_body_back_color', 'roi_conhead_title_color', 'roi_cht_border_color', 'roi_intfield_title_color', 'roi_intf_border_color', 'roi_intf_hover_color', 'roi_resu_head_text_color', 'roi_resu_head_bg_color', 'roi_resu_tab_frow_color', 'roi_resu_tab_serow_color', 'roi_resu_tab_body_color', 'roi_chart_type', 'roi_investamount_color', 'roi_profitamount_color', 'roi_enable_chart', 'roi_enable_table', 'roi_title', 'roi_head_title', 'roi_calc_head_text', 'roi_invest_gain_text', 'roi_text', 'annualized_roi_text', 'roi_investment_length_text', 'roi_invest_amount_text', 'roi_profit_earned_text', 'default_investment_amount', 'min_investment_amount', 'max_investment_amount', 'default_return_amount', 'min_return_amount', 'max_return_amount', 'default_investment_period', 'min_investment_period', 'max_investment_period');

