-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfdpspxpay_plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gfdpspxpay_form', '_gfdpspxpay_merchant_ref', '_gfdpspxpay_txndata1', '_gfdpspxpay_txndata2', '_gfdpspxpay_txndata3', '_gfdpspxpay_email', '_gfdpspxpay_url_fail', '_gfdpspxpay_delay_post', '_gfdpspxpay_delay_userrego', '_gfdpspxpay_delay_exec_always', '_gfdpspxpay_delay_ignore_nofeed', '_gfdpspxpay_delay_notify', '_gfdpspxpay_delay_autorespond');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gfdpspxpay_form', '_gfdpspxpay_merchant_ref', '_gfdpspxpay_txndata1', '_gfdpspxpay_txndata2', '_gfdpspxpay_txndata3', '_gfdpspxpay_email', '_gfdpspxpay_url_fail', '_gfdpspxpay_delay_post', '_gfdpspxpay_delay_userrego', '_gfdpspxpay_delay_exec_always', '_gfdpspxpay_delay_ignore_nofeed', '_gfdpspxpay_delay_notify', '_gfdpspxpay_delay_autorespond');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gfdpspxpay_form', '_gfdpspxpay_merchant_ref', '_gfdpspxpay_txndata1', '_gfdpspxpay_txndata2', '_gfdpspxpay_txndata3', '_gfdpspxpay_email', '_gfdpspxpay_url_fail', '_gfdpspxpay_delay_post', '_gfdpspxpay_delay_userrego', '_gfdpspxpay_delay_exec_always', '_gfdpspxpay_delay_ignore_nofeed', '_gfdpspxpay_delay_notify', '_gfdpspxpay_delay_autorespond');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gfdpspxpay_form', '_gfdpspxpay_merchant_ref', '_gfdpspxpay_txndata1', '_gfdpspxpay_txndata2', '_gfdpspxpay_txndata3', '_gfdpspxpay_email', '_gfdpspxpay_url_fail', '_gfdpspxpay_delay_post', '_gfdpspxpay_delay_userrego', '_gfdpspxpay_delay_exec_always', '_gfdpspxpay_delay_ignore_nofeed', '_gfdpspxpay_delay_notify', '_gfdpspxpay_delay_autorespond');

