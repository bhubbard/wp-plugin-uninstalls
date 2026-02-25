-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('facto_webservice_mode', 'facto_webservice_user', 'facto_webservice_pass', 'facto_checkbox_fe', 'facto_checkbox_fee', 'facto_checkbox_be', 'facto_checkbox_bee', 'facto_checkbox_fex', 'facto_docs_default', 'facto_checkbox_estadoprocesando', 'facto_checkbox_estadocompletado', 'facto_select_rounding_type', 'facto_checkbox_add_shipping', 'facto_checkbox_totalneto');
DELETE FROM wp_options WHERE option_name LIKE '%_fact';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Tipo de documento', 'RUT', 'Giro', 'Raz&oacute;n social', 'Razon social', 'Modalidad venta', 'Clausula venta', 'Folio de documento', 'Fecha de documento');
DELETE FROM wp_usermeta WHERE meta_key IN ('Tipo de documento', 'RUT', 'Giro', 'Raz&oacute;n social', 'Razon social', 'Modalidad venta', 'Clausula venta', 'Folio de documento', 'Fecha de documento');
DELETE FROM wp_termmeta WHERE meta_key IN ('Tipo de documento', 'RUT', 'Giro', 'Raz&oacute;n social', 'Razon social', 'Modalidad venta', 'Clausula venta', 'Folio de documento', 'Fecha de documento');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Tipo de documento', 'RUT', 'Giro', 'Raz&oacute;n social', 'Razon social', 'Modalidad venta', 'Clausula venta', 'Folio de documento', 'Fecha de documento');

