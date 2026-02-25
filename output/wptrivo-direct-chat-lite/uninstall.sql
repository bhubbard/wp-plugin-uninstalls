-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptwdclt_whtapp_widget_settings_opt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wptwdclt_wht_account_info', 'wptwdclt_wht_widget_show', 'wptwdclt_wht_widget_position', 'wptwdclt_wht_wc_show', 'wptwdclt_wht_wc_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('wptwdclt_wht_account_info', 'wptwdclt_wht_widget_show', 'wptwdclt_wht_widget_position', 'wptwdclt_wht_wc_show', 'wptwdclt_wht_wc_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('wptwdclt_wht_account_info', 'wptwdclt_wht_widget_show', 'wptwdclt_wht_widget_position', 'wptwdclt_wht_wc_show', 'wptwdclt_wht_wc_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wptwdclt_wht_account_info', 'wptwdclt_wht_widget_show', 'wptwdclt_wht_widget_position', 'wptwdclt_wht_wc_show', 'wptwdclt_wht_wc_position');

