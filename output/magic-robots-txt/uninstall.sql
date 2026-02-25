-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrt_usar_archivo', 'wpseo', 'mrt_version', 'mrt_avanzado', 'mrt_buscadores', 'mrt_carga', 'mrt_ahorro', 'mrt_venta_publicidad', 'mrt_venta_enlaces', 'mrt_settings_updated');

