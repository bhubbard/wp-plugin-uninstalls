-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nta_wa_widget_display', 'nta_wa_widget_styles', 'nta_wabutton_setting', 'nta_wa_woocommerce', 'nta_wa_analytics', 'rj_telegram_setting', 'rj_te_first_time_active', 'rj_te_version', 'default_post_edit_rows', 'nta_wa_woobutton_setting', 'nta_wa_ga_setting', 'nta_wa_restored', 'nta_wa_background_restored');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nta_wa_button_styles', 'nta_wa_account_info', 'nta_wa_widget_show', 'nta_wa_widget_position', 'nta_wa_wc_show', 'nta_wa_wc_position', 'rj_telegram_accounts', 'nta_wabutton_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('nta_wa_button_styles', 'nta_wa_account_info', 'nta_wa_widget_show', 'nta_wa_widget_position', 'nta_wa_wc_show', 'nta_wa_wc_position', 'rj_telegram_accounts', 'nta_wabutton_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('nta_wa_button_styles', 'nta_wa_account_info', 'nta_wa_widget_show', 'nta_wa_widget_position', 'nta_wa_wc_show', 'nta_wa_wc_position', 'rj_telegram_accounts', 'nta_wabutton_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nta_wa_button_styles', 'nta_wa_account_info', 'nta_wa_widget_show', 'nta_wa_widget_position', 'nta_wa_wc_show', 'nta_wa_wc_position', 'rj_telegram_accounts', 'nta_wabutton_style');

