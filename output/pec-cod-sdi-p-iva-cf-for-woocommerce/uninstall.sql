-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jc_wc_codice_fiscale_obbligatorio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('partita_iva', 'codice_fiscale', 'pec', 'codice_destinatario', 'azienda_privato', 'billing_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('partita_iva', 'codice_fiscale', 'pec', 'codice_destinatario', 'azienda_privato', 'billing_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('partita_iva', 'codice_fiscale', 'pec', 'codice_destinatario', 'azienda_privato', 'billing_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('partita_iva', 'codice_fiscale', 'pec', 'codice_destinatario', 'azienda_privato', 'billing_company');

