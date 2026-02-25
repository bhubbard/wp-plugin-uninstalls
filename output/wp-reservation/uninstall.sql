-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('res_calendar_color', 'res_color', 'res_security_plugin', 'res_security_settings', 'res_db_version', 'res_days', 'res_full_uninstall', 'res_terms', 'res_calc', 'res_mail_admin_subject', 'res_mail_admin_message', 'res_mail_client_subject', 'res_mail_client_message', 'res_advance_payment_in_percents', 'res_pay_paypal_enabled', 'res_pay_pos_enabled', 'res_pay_robokassa_enabled', 'res_pay_sber_enabled', 'res_pay_webmoney_enabled', 'res_pay_mobcash_enabled');

