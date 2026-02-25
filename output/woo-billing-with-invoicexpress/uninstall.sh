#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hd_wc_ie_plus_product_code'
wp option delete 'hd_wc_ie_plus_exemption_name'
wp option delete 'hd_wc_ie_plus_exemption_reason'
wp option delete 'hd_wc_ie_plus_sequences_cache'
wp option delete 'hd_wc_ie_plus_filename_prefix'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hd_wc_ie_plus_send_%'"
wp option delete 'hd_wc_ie_plus_transport_guide_email_address'
wp option delete 'hd_wc_ie_plus_email_method'
wp option delete 'hd_wc_ie_plus_pending_email'
wp option delete 'hd_wc_ie_plus_automatic_email_errors'
wp option delete 'hd_wc_ie_plus_send_invoice_subject'
wp option delete 'hd_wc_ie_plus_send_invoice_heading'
wp option delete 'hd_wc_ie_plus_send_invoice_body'
wp option delete 'hd_wc_ie_plus_document_entity'
wp option delete 'hd_wc_ie_plus_pending_finalize'
wp option delete 'hd_wc_ie_plus_guide_get_at_code'
wp option delete 'hd_wc_ie_plus_guide_get_at_code_delay_email'
wp option delete 'hd_wc_ie_plus_default_tax'
wp option delete 'hd_wc_ie_plus_notices'
wp option delete 'hd_wc_ie_plus_api_token'
wp option delete 'hd_wc_ie_plus_subdomain'
wp option delete 'hd_wc_ie_plus_vat_field_mandatory'
wp option delete 'hd_wc_ie_plus_leave_as_draft'
wp option delete 'hd_wc_ie_plus_tax_country'
wp option delete 'hd_wc_ie_plus_vat_field'
wp option delete 'hd_wc_ie_plus_create_bulk_invoice'
wp option delete 'hd_wc_ie_plus_db_version'
wp option delete 'hd_wc_ie_plus_vat_field_prefix'

# Clear Cron Jobs
wp cron event delete 'invoicexpress_woocommerce_fetch_at_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hd_wc_ie_plus_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hd_wc_ie_plus_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hd_wc_ie_plus_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hd_wc_ie_plus_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
