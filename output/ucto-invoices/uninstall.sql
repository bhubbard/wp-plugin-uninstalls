-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uctoplus_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uctoplusProformaInvoiceUrl', 'uctoplusInvoiceUrl', 'uctoplusCreditNoteUrl', 'invoice_id', 'uctoplus_invoice_id', 'uctoplus_proforma_invoice_id', 'uctoplus_credit_note_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('uctoplusProformaInvoiceUrl', 'uctoplusInvoiceUrl', 'uctoplusCreditNoteUrl', 'invoice_id', 'uctoplus_invoice_id', 'uctoplus_proforma_invoice_id', 'uctoplus_credit_note_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('uctoplusProformaInvoiceUrl', 'uctoplusInvoiceUrl', 'uctoplusCreditNoteUrl', 'invoice_id', 'uctoplus_invoice_id', 'uctoplus_proforma_invoice_id', 'uctoplus_credit_note_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uctoplusProformaInvoiceUrl', 'uctoplusInvoiceUrl', 'uctoplusCreditNoteUrl', 'invoice_id', 'uctoplus_invoice_id', 'uctoplus_proforma_invoice_id', 'uctoplus_credit_note_id');

