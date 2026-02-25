#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apisunat_logtail_token'
wp option delete 'apisunat_fecha'
wp option delete 'apisunat_forma_envio'
wp option delete 'apisunat_no_doc'
wp option delete 'apisunat_key_tipo_comprobante'
wp option delete 'apisunat_serie_nc_factura'
wp option delete 'apisunat_serie_nc_boleta'
wp option delete 'apisunat_personal_id'
wp option delete 'apisunat_personal_token'
wp option delete 'apisunat_serie_factura'
wp option delete 'apisunat_serie_boleta'
wp option delete 'apisunat_tipo_tributo'
wp option delete 'apisunat_factor_tributo'
wp option delete 'apisunat_include_time'
wp option delete 'apisunat_shipping_cost'
wp option delete 'apisunat_debug_mode'
wp option delete 'apisunat_custom_checkout'
wp option delete 'apisunat_key_value_factura'
wp option delete 'apisunat_key_value_boleta'
wp option delete 'apisunat_key_tipo_documento'
wp option delete 'apisunat_key_value_dni'
wp option delete 'apisunat_key_value_ruc'
wp option delete 'apisunat_key_value_pasaporte'
wp option delete 'apisunat_key_value_otros_extranjero'
wp option delete 'apisunat_key_numero_documento'
wp option delete 'apisunat_ruc'
wp option delete 'apisunat_company_name'
wp option delete 'apisunat_company_address'

# Clear Cron Jobs
wp cron event delete 'apisunat_one_minute_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_apisunat_meta_data_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_apisunat_meta_data_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_apisunat_meta_data_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_apisunat_meta_data_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apisunat_document_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apisunat_document_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apisunat_document_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apisunat_document_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apisunat_document_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apisunat_document_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apisunat_document_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apisunat_document_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apisunat_document_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apisunat_document_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apisunat_document_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apisunat_document_filename'"
