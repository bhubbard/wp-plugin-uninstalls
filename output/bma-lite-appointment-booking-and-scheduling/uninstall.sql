-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtwbmal_front_display_option', 'rtwbma_general_settings', 'rtwbmal_holidays_option', 'rtwbmal_frntend_brdr_radi', 'rtwbmal_general_settings', 'rtwbmal_company_option', 'rtwbmal_payment_option', 'rtwbmal_business_hour', 'rtwbmal_lite_installed', 'rtwwdpd_verification_done', 'rtwbmal_frontend_option', 'rtwbmal_reg_temp_opt', 'rtwbmal_return_url');

