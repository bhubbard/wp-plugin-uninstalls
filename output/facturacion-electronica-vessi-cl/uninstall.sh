#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vfec_vessicl_auto_emitir'
wp option delete 'vfec_vessicl_access_key'
wp option delete 'vfec_vessicl_secret_key'
wp option delete 'vfec_vessicl_email_from'
wp option delete 'vfec_vessicl_rut_emisor'
wp option delete 'vfec_vessicl_api_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_facturacion_document_type_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_facturacion_document_type_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_facturacion_document_type_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_facturacion_document_type_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_facturacion_document_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_facturacion_document_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_facturacion_document_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_facturacion_document_type'"
