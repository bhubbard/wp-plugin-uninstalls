-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_apm_label', 'wc_apm_american_express', 'wc_apm_google', 'wc_apm_mastercard', 'wc_apm_paypal', 'wc_apm_visa', 'wc_apm_discover', 'wc_apm_bitcoin', 'wc_apm_maestro', 'wc_apm_cash_on_delivery', 'wc_apm_dankort');

