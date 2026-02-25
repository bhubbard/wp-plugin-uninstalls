-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comprobante_checkbox_be', 'comprobante_checkbox_fe', 'comprobante_docs_default');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_comprobante', '_dni', '_ruc', '_responsable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_comprobante', '_dni', '_ruc', '_responsable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_comprobante', '_dni', '_ruc', '_responsable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_comprobante', '_dni', '_ruc', '_responsable');

