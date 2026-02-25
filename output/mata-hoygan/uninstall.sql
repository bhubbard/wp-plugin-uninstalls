-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mh_HOYGAN', 'mh_censura', 'mh_SEO', 'mh_palabras_censuradas', 'mh_no_corregir_doble', 'mh_no_corregir_k', 'mh_no_corregir_s_t', 'mh_ultimo_comentario', 'mh_terminado', 'terminado', 'mensaje_ocultado');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aioseop_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aioseop_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aioseop_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aioseop_keywords');

