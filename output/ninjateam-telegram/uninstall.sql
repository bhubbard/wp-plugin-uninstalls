-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nta_tele_widget_display', 'nta_tele_widget_styles', 'nta_telebutton_setting', 'nta_tele_woocommerce', 'nta_tele_analytics', 'njt_tele_first_time_active', 'njt_tele_version', 'default_post_edit_rows', 'nta_telegram_setting', 'nta_tele_woobutton_setting', 'nta_tele_ga_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nta_tele_button_styles', 'nta_tele_account_info', 'nta_tele_widget_show', 'nta_tele_widget_position', 'nta_tele_wc_show', 'nta_tele_wc_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('nta_tele_button_styles', 'nta_tele_account_info', 'nta_tele_widget_show', 'nta_tele_widget_position', 'nta_tele_wc_show', 'nta_tele_wc_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('nta_tele_button_styles', 'nta_tele_account_info', 'nta_tele_widget_show', 'nta_tele_widget_position', 'nta_tele_wc_show', 'nta_tele_wc_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nta_tele_button_styles', 'nta_tele_account_info', 'nta_tele_widget_show', 'nta_tele_widget_position', 'nta_tele_wc_show', 'nta_tele_wc_position');

