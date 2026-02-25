-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('robokassa_out_currency', 'robokassa_country_code', 'robokassa_culture', 'robokassa_payment_wc_robokassa_enabled', 'robokassa_iframe', 'robokassa_payment_MerchantLogin', 'robokassa_payment_test_onoff', 'robokassa_payment_testshoppass1', 'robokassa_payment_testshoppass2', 'robokassa_payment_shoppass1', 'robokassa_payment_shoppass2', 'robokassa_payment_sno', 'robokassa_payment_tax', 'RobokassaOrderPageDescription', 'robokassa_payment_paytype', 'RobokassaOrderPageTitle_all', 'RobokassaOrderPageDescription_all', 'robokassa_agreement_text', 'robokassa_agreement_pd_link', 'robokassa_agreement_oferta_link', 'robokassa_payment_SuccessURL', 'robokassa_payment_FailURL', 'robokassa_payment_sms_translit', 'robokassa_payment_sms1_enabled', 'robokassa_payment_sms1_text', 'robokassa_payment_sms2_enabled', 'robokassa_payment_sms2_text', 'robokassa_patyment_markup', 'robokassa_payment_type_commission', 'robokassa_payment_who_commission', 'robokassa_payment_robomarket_secret', 'robokassa_payment_size_commission', 'robokassa_payment_paymentMethod', 'robokassa_payment_paymentObject');
DELETE FROM wp_options WHERE option_name LIKE 'RobokassaOrderPageTitle_%';
DELETE FROM wp_options WHERE option_name LIKE 'RobokassaOrderPageDescription_%';

