#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uctoplus_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uctoplusProformaInvoiceUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uctoplusProformaInvoiceUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uctoplusProformaInvoiceUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uctoplusProformaInvoiceUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uctoplusInvoiceUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uctoplusInvoiceUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uctoplusInvoiceUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uctoplusInvoiceUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uctoplusCreditNoteUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uctoplusCreditNoteUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uctoplusCreditNoteUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uctoplusCreditNoteUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uctoplus_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uctoplus_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uctoplus_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uctoplus_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uctoplus_proforma_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uctoplus_proforma_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uctoplus_proforma_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uctoplus_proforma_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uctoplus_credit_note_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uctoplus_credit_note_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uctoplus_credit_note_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uctoplus_credit_note_id'"
