#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eupago_terms_accepted'
wp option delete 'eupago_endpoint'
wp option delete 'eupago_api_key'
wp option delete 'eupago_reminder'
wp option delete 'woocommerce_eupago_cofidispay_settings'
wp option delete 'eupago_webhook_encrypt_key'
wp option delete 'eupago_channel'
wp option delete 'eupago_debug'
wp option delete 'eupago_client_id'
wp option delete 'eupago_client_secret'
wp option delete 'eupago_sms_enable'
wp option delete 'biziq_environment'
wp option delete 'eupago_sms_intelidus_id'
wp option delete 'eupago_sms_intelidus_api'
wp option delete 'eupago_intelidus_sender'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'eupago_user'
wp option delete 'eupago_password'
wp option delete 'eupago_sms_payment_hold'
wp option delete 'eupago_sms_payment_confirmation'
wp option delete 'eupago_sms_order_confirmation'
wp option delete 'eupago_webhook_version'
wp option delete 'eupago_webhook_url'
wp option delete 'woocommerce_eupago_applepay_settings'
wp option delete 'woocommerce_eupago_bizum_settings'
wp option delete 'woocommerce_eupago_cc_settings'
wp option delete 'woocommerce_eupago_floa_settings'
wp option delete 'woocommerce_eupago_googlepay_settings'
wp option delete 'woocommerce_eupago_mbway_settings'
wp option delete 'woocommerce_eupago_multibanco_settings'
wp option delete 'woocommerce_eupago_pagaqui_settings'
wp option delete 'woocommerce_eupago_payshop_settings'
wp option delete 'woocommerce_eupago_pix_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_cofidis_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_cofidis_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_cofidis_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_cofidis_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_multibanco_data_fim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_multibanco_data_fim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_multibanco_data_fim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_multibanco_data_fim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_multibanco_entidade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_multibanco_entidade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_multibanco_entidade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_multibanco_entidade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_multibanco_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_multibanco_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_multibanco_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_multibanco_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_mbway_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_mbway_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_mbway_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_mbway_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_cc_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_cc_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_cc_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_cc_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_cc_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_cc_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_cc_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_cc_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_cofidispay_transactionID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_cofidispay_transactionID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_cofidispay_transactionID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_cofidispay_transactionID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_cofidispay_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_cofidispay_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_cofidispay_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_cofidispay_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_cofidispay_redirectUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_cofidispay_redirectUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_cofidispay_redirectUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_cofidispay_redirectUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_payshop_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_payshop_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_payshop_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_payshop_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_bizum_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_bizum_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_bizum_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_bizum_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_bizum_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_bizum_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_bizum_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_bizum_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_pix_referencia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_pix_referencia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_pix_referencia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_pix_referencia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_pix_pixCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_pix_pixCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_pix_pixCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_pix_pixCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_pix_pixImage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_pix_pixImage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_pix_pixImage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_pix_pixImage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eupago_pagaqui_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eupago_pagaqui_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eupago_pagaqui_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eupago_pagaqui_reference'"
