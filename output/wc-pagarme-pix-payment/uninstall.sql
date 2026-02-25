-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_pagarme_pix_payment_geteway_settings', 'wcbcf_settings', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_pagarme_pix_payment_dismissed_notice_plugin_sugestion');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wc_pagarme_pix_payment_dismissed_notice_%';

