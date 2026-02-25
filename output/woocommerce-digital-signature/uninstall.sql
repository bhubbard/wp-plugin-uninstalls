-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remove_rating_widget_woocommerce', 'esign_woo_agreement_setting', 'esign_woo_sad_page', 'woocommerce_checkout_order_received_endpoint', 'woocommerce_force_ssl_checkout', 'esig_global_document_id', 'esign_woo_logic', 'esign_woo_after_checkout_logic', 'rupom', 'esign_woo_agreement_in_product_renewal', 'WP_ESignature__Auto_Add_My_Signature_documentation', 'WP_ESignature__woocommerce_documentation', 'active_sitewide_plugins', '_esign_woo_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_esig_woo_meta_product_agreement', '_esig_woo_meta_sad_page', '_esign_woo_sign_logic', 'woo_esig_agreement', 'yith_quote_agreement_generated', 'has_esig_agreement', '_esig_after_checkout_doc_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('_esig_woo_meta_product_agreement', '_esig_woo_meta_sad_page', '_esign_woo_sign_logic', 'woo_esig_agreement', 'yith_quote_agreement_generated', 'has_esig_agreement', '_esig_after_checkout_doc_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('_esig_woo_meta_product_agreement', '_esig_woo_meta_sad_page', '_esign_woo_sign_logic', 'woo_esig_agreement', 'yith_quote_agreement_generated', 'has_esig_agreement', '_esig_after_checkout_doc_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_esig_woo_meta_product_agreement', '_esig_woo_meta_sad_page', '_esign_woo_sign_logic', 'woo_esig_agreement', 'yith_quote_agreement_generated', 'has_esig_agreement', '_esig_after_checkout_doc_list');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_esig-agreement-created-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_esig-agreement-created-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_esig-agreement-created-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_esig-agreement-created-%';

