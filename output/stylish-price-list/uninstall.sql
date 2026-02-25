-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spl_license_return', 'stylishpl_license_key', 'spl_extra_settings', 'spllk_opt', 'act_ser_conn_refused', 'spl_save_count', 'spl_feedback_invoke', 'df_spl_emailsender', 'df_spl_notifications', 'stylish_price_list_version', 'googlefonts_options', 'wp_google_fonts_global_notification');
DELETE FROM wp_options WHERE option_name LIKE 'spl_cats_%';

