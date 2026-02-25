-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ele_cc_ave_merchant_id', 'ele_cc_ave_working_key', 'ele_cc_ave_access_code', 'ele_cc_ave_redirect_page', 'ele_cc_ave_payment_mode');

