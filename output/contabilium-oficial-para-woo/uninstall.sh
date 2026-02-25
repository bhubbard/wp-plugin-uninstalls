#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_api_integration'
wp option delete 'cb_api_country'
wp option delete 'cb_sync_stock'
wp option delete 'cb_sync_price'
wp option delete 'cb_sync_price_with_iva'
wp option delete 'plugin_version'
wp option delete 'cb_api_client_id'
wp option delete 'cb_api_client_secret'
wp option delete 'cb_version'
wp option delete 'cb_accepted_status'
wp option delete 'cb_cancelled_status'
wp option delete 'cb_credenciales_enviadas'
wp option delete 'cb_uninstalled_at'
wp option delete 'user_email'
wp option delete 'wc_api_integration'
wp option delete 'wc_api_client_secret'
wp option delete 'cb_installed_at'
wp option delete 'woocommerce_api_enabled'
wp option delete 'wc_add_dni_fields'
wp option delete 'cb_default_dni'
wp option delete 'cb_default_type'
wp option delete 'cb_custom_type_name'
wp option delete 'cb_custom_dni_name'

# Delete Transients
wp transient delete 'contabilium_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_comprobante_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_comprobante_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_comprobante_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_comprobante_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_document_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_document_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_document_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_document_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_document_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_document_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_document_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_document_number'"
