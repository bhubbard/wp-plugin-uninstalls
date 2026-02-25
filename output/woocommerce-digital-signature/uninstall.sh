#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remove_rating_widget_woocommerce'
wp option delete 'esign_woo_agreement_setting'
wp option delete 'esign_woo_sad_page'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'esig_global_document_id'
wp option delete 'esign_woo_logic'
wp option delete 'esign_woo_after_checkout_logic'
wp option delete 'rupom'
wp option delete 'esign_woo_agreement_in_product_renewal'
wp option delete 'WP_ESignature__Auto_Add_My_Signature_documentation'
wp option delete 'WP_ESignature__woocommerce_documentation'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_esign_woo_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esig_woo_meta_product_agreement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esig_woo_meta_product_agreement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esig_woo_meta_product_agreement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esig_woo_meta_product_agreement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esig_woo_meta_sad_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esig_woo_meta_sad_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esig_woo_meta_sad_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esig_woo_meta_sad_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esign_woo_sign_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esign_woo_sign_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esign_woo_sign_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esign_woo_sign_logic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_esig_agreement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_esig_agreement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_esig_agreement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_esig_agreement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yith_quote_agreement_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yith_quote_agreement_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yith_quote_agreement_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yith_quote_agreement_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_esig_agreement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_esig_agreement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_esig_agreement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_esig_agreement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_esig-agreement-created-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_esig-agreement-created-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_esig-agreement-created-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_esig-agreement-created-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_esig_after_checkout_doc_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_esig_after_checkout_doc_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_esig_after_checkout_doc_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_esig_after_checkout_doc_list'"
