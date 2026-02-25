-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pelecard_pay_Buttons_termNo', 'pelecard_pay_Buttons_username', 'pelecard_pay_Buttons_password', 'pelecard_pay_Buttons_max_Payments', 'pelecard_pay_Buttons_logo', 'pelecard_pay_Buttons_smallLogo', 'pelecard_pay_Buttons_hidePciDssLogo', 'pelecard_pay_Buttons_hidePelecardLogo', 'pelecard_pay_Buttons_css', 'pelecard_pay_Buttons_success_url', 'pelecard_pay_Buttons_error_url', 'pelecard_pay_Buttons_currency', 'pelecard_pay_Buttons_Background', 'pelecard_pay_Buttons_backgroundImage', 'pelecard_pay_Buttons_topMargin');

