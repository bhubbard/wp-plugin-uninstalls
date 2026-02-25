-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freekitime_clima_ancho', 'freekitime_clima_pronostico', 'freekitime_clima_codigo_ciudad');

