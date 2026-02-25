-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pageId_RBMIC', 'color_RBMIC', 'borde_RBMIC', 'texto_RBMIC', 'boton1_RBMIC', 'boton2_RBMIC', 'texto_boton__RBMIC', 'colorBorde_RBMIC', 'doctor_RBMIC');

