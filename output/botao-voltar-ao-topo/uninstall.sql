-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voltar_topo_pages', 'voltar_topo_background_color', 'voltar_topo_icon');

