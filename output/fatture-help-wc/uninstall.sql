-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fatturehelp-wc-wantInvoice', '_fatturehelp-wc-isCompany', '_fatturehelp-wc-taxcode', '_fatturehelp-wc-VATnumber', '_fatturehelp-wc-CodiceDestinatario', '_fatturehelp-wc-PECDestinatario', '_fatturehelp-wc-haveSdI', '_fatturehelp-wc-wantXML');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fatturehelp-wc-wantInvoice', '_fatturehelp-wc-isCompany', '_fatturehelp-wc-taxcode', '_fatturehelp-wc-VATnumber', '_fatturehelp-wc-CodiceDestinatario', '_fatturehelp-wc-PECDestinatario', '_fatturehelp-wc-haveSdI', '_fatturehelp-wc-wantXML');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fatturehelp-wc-wantInvoice', '_fatturehelp-wc-isCompany', '_fatturehelp-wc-taxcode', '_fatturehelp-wc-VATnumber', '_fatturehelp-wc-CodiceDestinatario', '_fatturehelp-wc-PECDestinatario', '_fatturehelp-wc-haveSdI', '_fatturehelp-wc-wantXML');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fatturehelp-wc-wantInvoice', '_fatturehelp-wc-isCompany', '_fatturehelp-wc-taxcode', '_fatturehelp-wc-VATnumber', '_fatturehelp-wc-CodiceDestinatario', '_fatturehelp-wc-PECDestinatario', '_fatturehelp-wc-haveSdI', '_fatturehelp-wc-wantXML');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_fatturehelp-wc-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_fatturehelp-wc-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_fatturehelp-wc-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fatturehelp-wc-%';

