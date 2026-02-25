-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tipo_checkbox_ce', 'tipo_checkbox_pass', 'tipo_checkbox_otros', 'tipo_checkbox_dni', 'tipo_checkbox_ruc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_documento', '_nro');
DELETE FROM wp_usermeta WHERE meta_key IN ('_documento', '_nro');
DELETE FROM wp_termmeta WHERE meta_key IN ('_documento', '_nro');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_documento', '_nro');

