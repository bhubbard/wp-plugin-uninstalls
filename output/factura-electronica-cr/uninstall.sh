#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fvcr_modo_hacienda'
wp option delete 'fvcr_access_token'
wp option delete 'fvcr_api_token'
wp option delete 'fvcr_economic_activity_hacienda'
wp option delete 'fvcr_when_send_fe'
wp option delete 'fvcr_sucursal'
wp option delete 'fvcr_emitir_fe'
wp option delete 'fvcr_emitir_te'
wp option delete 'fvcr_afectar_inventario'
wp option delete 'fvcr_exchange_rate'
wp option delete 'fvcr_db_version'
wp option delete 'last_automatic_fvcr_exchange_rate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_billing_fv_identification_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_billing_fv_identification_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_billing_fv_identification_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_billing_fv_identification_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_billing_fv_identification_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_billing_fv_identification_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_billing_fv_identification_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_billing_fv_identification_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_billing_fv_required_fe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_billing_fv_required_fe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_billing_fv_required_fe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_billing_fv_required_fe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_unid_hacienda'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_unid_hacienda'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_unid_hacienda'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_unid_hacienda'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_cabys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_cabys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_cabys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_cabys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_hacienda_clave'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_hacienda_clave'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_hacienda_clave'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_hacienda_clave'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_last_send_date_xml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_last_send_date_xml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_last_send_date_xml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_last_send_date_xml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fvcr_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fvcr_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fvcr_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fvcr_product_type'"
