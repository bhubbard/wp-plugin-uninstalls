-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bacs_accounts', 'scan2payme_option_IBAN', 'scan2payme_option_BIC', 'scan2payme_option_showwhenstatus', 'scan2payme_option_showwhenmethod', 'scan2payme_option_showhook', 'scan2payme_option_PreviewMessage', 'scan2payme_option_PreviewAmount', 'scan2payme_option_Name', 'scan2payme_option_textabove', 'scan2payme_option_textunder', 'scan2payme_option_logo', 'scan2payme_option_account');

