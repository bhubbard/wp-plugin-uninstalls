-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aa_version_number', 'aa_disabilita_visauomatica_allegati');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ammap_wysiwyg', 'ammap_importo', 'ammap_beneficiario', 'ammap_fiscale', 'ammap_norma', 'ammap_assegnazione', 'ammap_responsabile', 'ammap_determina', 'ammap_data', 'ammap_importo_previsto', 'ammap_data_incarico', 'ammap_protocollo', 'ammap_data_inizio', 'ammap_data_fine', 'aa_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ammap_wysiwyg', 'ammap_importo', 'ammap_beneficiario', 'ammap_fiscale', 'ammap_norma', 'ammap_assegnazione', 'ammap_responsabile', 'ammap_determina', 'ammap_data', 'ammap_importo_previsto', 'ammap_data_incarico', 'ammap_protocollo', 'ammap_data_inizio', 'ammap_data_fine', 'aa_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ammap_wysiwyg', 'ammap_importo', 'ammap_beneficiario', 'ammap_fiscale', 'ammap_norma', 'ammap_assegnazione', 'ammap_responsabile', 'ammap_determina', 'ammap_data', 'ammap_importo_previsto', 'ammap_data_incarico', 'ammap_protocollo', 'ammap_data_inizio', 'ammap_data_fine', 'aa_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ammap_wysiwyg', 'ammap_importo', 'ammap_beneficiario', 'ammap_fiscale', 'ammap_norma', 'ammap_assegnazione', 'ammap_responsabile', 'ammap_determina', 'ammap_data', 'ammap_importo_previsto', 'ammap_data_incarico', 'ammap_protocollo', 'ammap_data_inizio', 'ammap_data_fine', 'aa_ignore_notice');

