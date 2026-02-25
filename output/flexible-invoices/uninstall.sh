#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'inspire_invoices_invoice_start_number'
wp option delete 'woocommerce_default_country'
wp option delete 'wpdesk_helper_options'
wp option delete 'wpdesk_tracker_skip_flexible_invoices_woocommerce'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'inspire_invoices_gutenberg_editor'
wp option delete 'inspire_invoices_currency'
wp option delete 'inspire_invoices_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reinstall_numbering'"
wp option delete 'inspire_invoices_default_values'
wp option delete 'inspire_invoices_currency_woo_updated'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'inspire_invoices_tax_updated'
wp option delete 'inspire_invoices_settings_upgrade'
wp option delete 'flexible-invoices-register-strings'
wp option delete 'flexible-invoices-register-woocommerce-strings'
wp option delete 'flexible-invoices-load-translations'
wp option delete 'flexible-invoices-load-woocommerce-translations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_ask'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_ask'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_ask'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_ask'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_document_proforma_relation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_document_proforma_relation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_document_proforma_relation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_document_proforma_relation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_document_correction_relation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_document_correction_relation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_document_correction_relation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_document_correction_relation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_correction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_correction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_correction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_correction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdesk_fi_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdesk_fi_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdesk_fi_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdesk_fi_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'screen_layout_inspire_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'screen_layout_inspire_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'screen_layout_inspire_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'screen_layout_inspire_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manageedit-inspire_invoicecolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manageedit-inspire_invoicecolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manageedit-inspire_invoicecolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manageedit-inspire_invoicecolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_correction_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_correction_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_correction_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_correction_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_invoice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_invoice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_invoice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_invoice_%'"
